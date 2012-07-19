#ifndef ISIS_FILTER_RESAMPLE_HPP
#define ISIS_FILTER_RESAMPLE_HPP

#include "filter.hpp"
#include <CoreUtils/matrix.hpp>

namespace isis
{
namespace filter
{

class ResampleFilter : public ImageOutputFilter
{
public:
	ResampleFilter();
	virtual std::string getFilterName() const { return std::string( "ResampleFilter" ); }
	virtual bool isValid() const { return matrixSet_; }

	void setMatrix( const util::Matrix3x3<float> &matrix ) { matrix_ = matrix; }
	void setIndexOrigin( const util::fvector3 &indexOrigin ) { indexOrigin_ = indexOrigin; }

private:
	util::Matrix3x3<float> matrix_;
	util::fvector3 indexOrigin_;
	bool matrixSet_;
};


} // end namespace filter
} // end namespace isis


#endif // ISIS_FILTER_RESAMPLE_HPP