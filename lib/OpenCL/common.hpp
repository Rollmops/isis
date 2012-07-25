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
 * common.hpp
 *
 * Description:
 *
 *  Created on: Jul 25, 2012
 *      Author: tuerke
 ******************************************************************/
#ifndef _ISIS_OPENCL_COMMON_HPP
#define _ISIS_OPENCL_COMMON_HPP

#include "definitions.hpp"
#include "log_modules.hpp"
#include "error.hpp"
#include "CL/cl.h"

namespace isis
{
namespace cl
{

typedef OpenCLLog Runtime;
typedef OpenCLDebug Debug;


} // end namespace cl
} // end namespace isis


#endif // _ISIS_OPENCL_COMMON_HPP