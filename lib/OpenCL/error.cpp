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
 * error.cpp
 *
 * Description:
 *
 *  Created on: Jul 25, 2012
 *      Author: tuerke
 ******************************************************************/
#include "error.hpp"

namespace isis
{
namespace cl
{
namespace error
{

std::string getDescription ( const cl_int &errorNumber )
{
	const int errorCount = sizeof( ocl_error_string_ ) / sizeof( ocl_error_string_[0] );
	const int index = -errorNumber;
	return ( index >= 0 && index < errorCount ) ? ocl_error_string_[index] : "";
}


} //end namespace error
} //end namespace cl
} //end namespace isis