/****************************************************************
 *
 * <Copyright information>
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 3
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
 *
 * Author: Erik Tuerke, etuerke@googlemail.com
 *
 * worksize.hpp
 *
 * Description:
 *
 *  Created on: Jul 25, 2012
 *      Author: tuerke
 ******************************************************************/
#ifndef _ISIS_OPENCL_WORKSIZE_HPP
#define _ISIS_OPENCL_WORKSIZE_HPP

#include "common.hpp"
#include "CoreUtils/vector.hpp"

namespace isis
{
namespace cl
{

template<unsigned int DIM>
class WorkSize
{
public:
	typedef util::FixedVector<size_t, DIM> size_type;

	WorkSize() {
		//acquire the max local and global sizes


	}
private:
	size_type globalSize_;
	size_type localSize_;
	size_type maxGlobalSize_;
	size_type maxLocalSize_;

};

} // end namespace cl
} // end namespace isis

#endif // _ISIS_OPENCL_WORKSIZE_HPP