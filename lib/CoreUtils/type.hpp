//
// C++ Interface: type
//
// Description:
//
//
// Author: Enrico Reimer<reimer@cbs.mpg.de>, (C) 2009
//
// Copyright: See COPYING file that comes with this distribution
//
//

#ifndef ISISTYPE_HPP
#define ISISTYPE_HPP

#include "log.hpp"
#include "type_base.hpp"

#include <string>

namespace isis{ 
/*! \addtogroup util
 *  Additional documentation for group `mygrp'
 *  @{
 */
namespace util{

/// Generic class for type aware variables
template<typename TYPE> class Type: public _internal::TypeBase{
	TYPE m_val;
	static const char m_typeName[];
	static const unsigned short m_typeID;
public:
	/**
	 * Create a Type from any type of value-type.
	 * If the type of the parameter is not the same as the content type of the object, the system tries to do a type conversion.
	 * If that fails, boost::bad_lexical_cast is thrown.
	 */
	template<typename T> Type(const T& value):
	m_val(__cast_to(this,value)){}
	virtual bool is(const std::type_info & t)const{
		return t==typeid(TYPE);
	}
	virtual std::string toString(bool labeled=false)const{
		std::string ret=boost::lexical_cast<std::string>(m_val);
		if(labeled)ret+="("+staticName()+")";
		return ret;
	}
	virtual std::string typeName()const{
		return staticName();
	}
	virtual unsigned short typeID()const{
		return staticId();
	}

	/// \returns true if this and second contain the same value of the same type
	virtual bool eq(const TypeBase &second)const{
		if(second.is<TYPE>()){
			return m_val == (TYPE)second.cast_to_Type<TYPE>();
		} else
			return  false;
	}

	static unsigned short staticId(){return m_typeID;}
	static std::string staticName(){return m_typeName;}
	
	/**
	 * Implicit conversion of Type to its value type.
	 * Only the actual type is allowed.
	 * However, the following is valid:
	 * \code 
	 * Type<int> i(5);
	 * float f=i;
	 * \endcode
	 * In this case the function returns int which is then also implicitely converted to float.
	 * \return the stored value
	 */
	operator const TYPE&()const{return m_val;}
	operator TYPE&(){return m_val;}
	
	TypeBase* clone() const
	{
		LOG(CoreDebug,verbose_info)	<< "Creating cloned copy of " << toString(true);
		return new Type<TYPE>(*this);
	}
	
	virtual ~Type(){}
};

/**
 * Generic class for type (and length) - aware pointers.
 * The class is designed for arrays, but you can also "point" to an single element
 * by just use "1" for the length.
 * The pointers are reference counted and will be deleted automatically by a customizable deleter.
 * The copy is cheap, thus the copy of a TypePtr will reference the same data.
 */
template<typename TYPE> class TypePtr: public _internal::TypePtrBase{
	boost::shared_ptr<TYPE> m_val;
	template<typename T> TypePtr(const Type<T>& value); // Dont do this
	/// Proxy-Deleter to encapsulate the real deleter/shared_ptr when creating shared_ptr for parts of a shared_ptr
public:
	class DelProxy : public boost::shared_ptr<TYPE>{
	public:
		/**
		 * Create a proxy for a given master shared_ptr
		 * This increments the use_count of the master and thus keeps the
		 * master from being deleted while parts of it are still in use.
		 */
		DelProxy(const TypePtr<TYPE> &master): boost::shared_ptr<TYPE>(master){
			LOG(CoreDebug,util::verbose_info) << "Creating DelProxy for " << this->get();
		}
		/// decrement the use_count of the master when a specific part is not referenced anymore
		void operator()(TYPE *at){
			LOG(CoreDebug,util::verbose_info)
			<< "Deletion for " << this->get() << " called from splice at offset "	<< at-this->get()
			<< ", current use_count: " << this->use_count();
			this->reset();//actually not needed, but we keep it here to keep obfuscation low
		}
	};
	/// Default delete-functor for c-arrays (uses free()).
	struct BasicDeleter{
		void operator()(TYPE *p){
			LOG(CoreDebug,info) << "Freeing pointer " << p << " (" << TypePtr<TYPE>::staticName() << ") ";
			free(p);
		};
	};
	/// Default delete-functor for arrays of objects (uses delete[]).
	struct ObjectArrayDeleter{
		void operator()(TYPE *p){
			LOG(CoreDebug,info) << "Deleting object array at " << p << " (" << TypePtr<TYPE>::staticName() << ") ";
			delete[] p;
		};
	};
	/**
	* Contructor for empty pointer.
	* length will be 0 and every attempt to dereference it will raise an exception.
	*/
	TypePtr(){}
	/**
	 * Creates TypePtr from a pointer of type TYPE.
	 * The pointers are automatically deleted by an instance of BasicDeleter and should not be used outside once used here.
	 * If ptr is a pointer to C++ objects (delete[] needed) you must use 
	 * TypePtr(ptr,len,TypePtr\<TYPE\>::ObjectArrayDeleter())!
	 * The usual dereferencing pointer interface ("*" and "->") is supported.
	 * \param ptr the pointer to the used array
	 * \param len the length of the used array (TypePtr does NOT check for length, 
	 * this is just here for child classes which may want to check)
	 */
	TypePtr(TYPE* ptr,size_t length):
	m_val(ptr,BasicDeleter()),_internal::TypePtrBase(length){}
	/**
	 * Creates TypePtr from a pointer of type TYPE.
	 * The pointers are automatically deleted by an copy of d and should not be used outside once used here.
	 * The usual dereferencing pointer interface ("*" and "->") is supported.
	 * D must implement operator()(TYPE *p).
	 * \param ptr the pointer to the used array
	 * \param len the length of the used array (TypePtr does NOT check for length,
	 * \param d the deleter to be used when the data shall be deleted ( d() is called then )
	 */

	template<typename D> TypePtr(TYPE* ptr,size_t length,D d):
	m_val(ptr,d),_internal::TypePtrBase(length)	{}

	virtual ~TypePtr(){}

	/// Copies the data pointed to into another TypePtr of the same type
	void deepCopy(TypePtr<TYPE> &dst)
	{
		if(m_len!=dst.len())
			LOG(CoreLog,warning) << "Source and destination do not have the same size, using the smaller";
		boost::shared_ptr<TYPE> &pDst=(boost::shared_ptr<TYPE>)dst;
		std::copy(
			m_val.get(),
			m_val.get()+std::min(m_len,dst.len()),
			pDst.get()
		);
	}
	
	/// @copydoc Type::is()
	virtual bool is(const std::type_info & t)const{
		return t==typeid(TYPE);
	}
	/// @copydoc Type::toString()
	virtual std::string toString(bool labeled=false)const{
		std::string ret;
		if(m_len){
			const TYPE* ptr=m_val.get();
			for(size_t i=0;i<m_len-1;i++)
				ret+=Type<TYPE>(ptr[i]).toString(false)+"|";
			ret+=Type<TYPE>(ptr[m_len-1]).toString(labeled);
		}
		return boost::lexical_cast<std::string>(m_len) +"#"+ret;
	}
	/// @copydoc Type::typeName()
	virtual std::string typeName()const{
		return staticName();
	}
	/// @copydoc Type::typeID()
	virtual unsigned short typeID()const{
		return staticId();
	}
	/// @copydoc Type::staticID()
	static unsigned short staticId()
	{
		return Type<TYPE>::staticId() <<2;
	}
	/// @copydoc Type::staticName()
	static std::string staticName()
	{
		return std::string(Type<TYPE>::staticName())+"*";
	}
	
	/**
	 * Reference element at at given index.
	 * If index is invalid, behaviour is undefined. Probably it will crash.
	 * \return reference to element at at given index.
	 */
	TYPE& operator[](size_t idx){
		return (m_val.get())[idx];
	}
	TYPE operator[](size_t idx)const{
		return (m_val.get())[idx];
	}
	/**
	 * Implicit conversion to boost::shared_ptr\<TYPE\>
	 * The returned smart pointer will be part of the reference-counting and will correctly delete the data 
	 * (using the given deleter) if required.
	 * \return boost::shared_ptr\<TYPE\> handling same data as the object.
	 */
	operator boost::shared_ptr<TYPE>&(){return m_val;}
	operator const boost::shared_ptr<TYPE>&()const{return m_val;}

	TypePtrBase* clone() const
	{
		LOG(CoreDebug,verbose_info)	<< "Creating cloned copy of TypePtr<" << typeName() << ">";
		return new TypePtr<TYPE>(*this);
	}
	std::vector<Reference> splice(size_t size)const{
		if(size>=len()){
			LOG(CoreDebug,warning)
				<< "splicing data of the size " << len() << " up into blocks of the size is kind of useless ..." << size;
		}
		const size_t fullSplices=len()/size;
		const size_t lastSize=len()%size;//rest of the division - size of the last splice
		const size_t splices=fullSplices + (lastSize?1:0);

		std::vector<Reference> ret(splices);
		DelProxy proxy(*this);
		for(size_t i=0;i<fullSplices;i++)
			ret[i].reset(new TypePtr(m_val.get()+i*size,size,proxy));
		if(lastSize)
			ret.back().reset(new TypePtr(m_val.get()+fullSplices*size,lastSize,proxy));
		return ret;
	}
};

}
/// @}
}

#endif //DATATYPE_INC
