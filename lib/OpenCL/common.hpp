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

#include "log_modules.hpp"
#include "error.hpp"
#include "CL/cl.h"

namespace isis
{
namespace cl
{

typedef OpenCLLog Runtime;
typedef OpenCLDebug Debug;

enum DeviceType {   CPU = CL_DEVICE_TYPE_CPU,
					GPU = CL_DEVICE_TYPE_GPU,
					ACCELERATOR = CL_DEVICE_TYPE_ACCELERATOR,
					DEFAULT = CL_DEVICE_TYPE_DEFAULT,
					ALL = CL_DEVICE_TYPE_ALL

				};

enum DeviceInfo {   TYPE = CL_DEVICE_TYPE,
					VENDOR_ID = CL_DEVICE_VENDOR_ID,
					MAX_COMPUTE_UNITS = CL_DEVICE_MAX_COMPUTE_UNITS,
					MAX_WORK_ITEM_DIMENSIONS = CL_DEVICE_MAX_WORK_ITEM_DIMENSIONS,
					MAX_WORK_GROUP_SIZE = CL_DEVICE_MAX_WORK_GROUP_SIZE,
					PREFERRED_VECTOR_WIDTH_CHAR = CL_DEVICE_PREFERRED_VECTOR_WIDTH_CHAR,
					PREFERRED_VECTOR_WIDTH_SHORT = CL_DEVICE_PREFERRED_VECTOR_WIDTH_SHORT,
					PREFERRED_VECTOR_WIDTH_INT = CL_DEVICE_PREFERRED_VECTOR_WIDTH_INT,
					PREFERRED_VECTOR_WIDTH_LONG = CL_DEVICE_PREFERRED_VECTOR_WIDTH_LONG,
					PREFERRED_VECTOR_WIDTH_FLOAT = CL_DEVICE_PREFERRED_VECTOR_WIDTH_FLOAT,
					PREFERRED_VECTOR_WIDTH_DOUBLE = CL_DEVICE_PREFERRED_VECTOR_WIDTH_DOUBLE,
					PREFERRED_VECTOR_WIDTH_HALF = CL_DEVICE_PREFERRED_VECTOR_WIDTH_HALF,
					NATIVE_VECTOR_WIDTH_CHAR = CL_DEVICE_NATIVE_VECTOR_WIDTH_CHAR,
					NATIVE_VECTOR_WIDTH_SHORT = CL_DEVICE_NATIVE_VECTOR_WIDTH_SHORT,
					NATIVE_VECTOR_WIDTH_INT = CL_DEVICE_NATIVE_VECTOR_WIDTH_INT,
					NATIVE_VECTOR_WIDTH_LONG = CL_DEVICE_NATIVE_VECTOR_WIDTH_LONG,
					NATIVE_VECTOR_WIDTH_FLOAT = CL_DEVICE_NATIVE_VECTOR_WIDTH_FLOAT,
					NATIVE_VECTOR_WIDTH_DOUBLE = CL_DEVICE_NATIVE_VECTOR_WIDTH_DOUBLE,
					NATIVE_VECTOR_WIDTH_HALF = CL_DEVICE_NATIVE_VECTOR_WIDTH_HALF,
					MAX_CLOCK_FREQUENCY = CL_DEVICE_MAX_CLOCK_FREQUENCY,
					ADDRESS_BITS = CL_DEVICE_ADDRESS_BITS,
					MAX_MEM_ALLOC_SIZE = CL_DEVICE_MAX_MEM_ALLOC_SIZE,
					IMAGE_SUPPORT = CL_DEVICE_IMAGE_SUPPORT,
					MAX_READ_IMAGE_ARGS = CL_DEVICE_MAX_READ_IMAGE_ARGS,
					MAX_WRITE_IMAGE_ARGS = CL_DEVICE_MAX_WRITE_IMAGE_ARGS,
					IMAGE2D_MAX_WIDTH = CL_DEVICE_IMAGE2D_MAX_WIDTH,
					IMAGE2D_MAX_HEIGHT = CL_DEVICE_IMAGE2D_MAX_HEIGHT,
					IMAGE3D_MAX_WIDTH = CL_DEVICE_IMAGE3D_MAX_WIDTH,
					IMAGE3D_MAX_HEIGHT = CL_DEVICE_IMAGE3D_MAX_HEIGHT,
					IMAGE3D_MAX_DEPTH = CL_DEVICE_IMAGE3D_MAX_DEPTH,
					MAX_SAMPLERS = CL_DEVICE_MAX_SAMPLERS,
					MAX_PARAMETER_SIZE = CL_DEVICE_MAX_PARAMETER_SIZE,
					MEM_BASE_ADDR_ALIGN = CL_DEVICE_MEM_BASE_ADDR_ALIGN,
					MIN_DATA_TYPE_ALIGN_SIZE = CL_DEVICE_MIN_DATA_TYPE_ALIGN_SIZE,
					SINGLE_FP_CONFIG = CL_DEVICE_SINGLE_FP_CONFIG,
					GLOBAL_MEM_CACHE_TYPE = CL_DEVICE_GLOBAL_MEM_CACHE_TYPE,
					GLOBAL_MEM_CACHELINE_SIZE = CL_DEVICE_GLOBAL_MEM_CACHELINE_SIZE,
					GLOBAL_MEM_CACHE_SIZE = CL_DEVICE_GLOBAL_MEM_CACHE_SIZE,
					GLOBAL_MEM_SIZE = CL_DEVICE_GLOBAL_MEM_SIZE,
					MAX_CONSTANT_BUFFER_SIZE = CL_DEVICE_MAX_CONSTANT_BUFFER_SIZE,
					MAX_CONSTANT_ARGS = CL_DEVICE_MAX_CONSTANT_ARGS,
					LOCAL_MEM_TYPE = CL_DEVICE_LOCAL_MEM_TYPE,
					LOCAL_MEM_SIZE = CL_DEVICE_LOCAL_MEM_SIZE,
					ERROR_CORRECTION_SUPPORT = CL_DEVICE_ERROR_CORRECTION_SUPPORT,
					HOST_UNIFIED_MEMORY = CL_DEVICE_HOST_UNIFIED_MEMORY,
					PROFILING_TIMER_RESOLUTION = CL_DEVICE_PROFILING_TIMER_RESOLUTION,
					ENDIAN_LITTLE = CL_DEVICE_ENDIAN_LITTLE,
					AVAILABLE = CL_DEVICE_AVAILABLE,
					COMPILER_AVAILABLE = CL_DEVICE_COMPILER_AVAILABLE,
					EXECUTION_CAPABILITIES = CL_DEVICE_EXECUTION_CAPABILITIES,
					QUEUE_PROPERTIES = CL_DEVICE_QUEUE_PROPERTIES,
					PLATFORM = CL_DEVICE_PLATFORM,
					NAME = CL_DEVICE_NAME,
					VENDOR = CL_DEVICE_VENDOR,
					DRIVER_VERSION = CL_DRIVER_VERSION,
					PROFILE = CL_DEVICE_PROFILE,
					VERSION = CL_DEVICE_VERSION,
					EXTENSIONS = CL_DEVICE_EXTENSIONS
				};

enum CommandQueueProperties {   OUT_OF_ORDER_EXEC_MODE_ENABLE = CL_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE,
								PROFILING_ENABLE = CL_QUEUE_PROFILING_ENABLE
							};

enum DeviceExecCapabilities {   KERNEL = CL_EXEC_KERNEL,
								NATIVE_KERNEL = CL_EXEC_NATIVE_KERNEL
							};

enum DeviceLocalMemType {   LOCAL = CL_LOCAL,
							GLObAL = CL_GLOBAL
						};

enum DeviceMemCacheType {   NONE = CL_NONE,
							READ_ONLY = CL_READ_ONLY_CACHE,
							READ_WRITE = CL_READ_WRITE_CACHE
						};

enum DeviceFPConfig {   DENORM = CL_FP_DENORM,
						INF_NAN = CL_FP_INF_NAN,
						ROUND_TO_NEAREST = CL_FP_ROUND_TO_NEAREST,
						ROUND_TO_ZERO = CL_FP_ROUND_TO_ZERO,
						ROUND_TO_INF = CL_FP_ROUND_TO_INF,
						FMA = CL_FP_FMA,
						SOFT_FLOAT = CL_FP_SOFT_FLOAT
					};
} // end namespace cl
} // end namespace isis


#endif // _ISIS_OPENCL_COMMON_HPP