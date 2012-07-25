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
 * log_modules.hpp
 *
 * Description:
 *
 *  Created on: Jul 25, 2012
 *      Author: tuerke
 ******************************************************************/
#ifndef _ISIS_OPENCL_LOG_MODULES_HPP
#define _ISIS_OPENCL_LOG_MODULES_HPP

namespace isis
{
namespace cl
{

struct OpenCLLog {static const char *name() {return "OpenCL";}; enum {use = _ENABLE_LOG};};
struct OpenCLDebug {static const char *name() {return "OpenCLDebug";}; enum {use = _ENABLE_DEBUG};};

} // end namespace cl
} // end namespace isis


#endif // _ISIS_OPENCL_LOG_MODULES_HPP