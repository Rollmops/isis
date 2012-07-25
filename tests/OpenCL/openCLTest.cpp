#define BOOST_TEST_MODULE OpenCLTest
#define NOMINMAX 1
#include <boost/test/unit_test.hpp>

#include "worksize.hpp"

namespace isis
{
namespace test
{
BOOST_AUTO_TEST_CASE( work_size_test )
{
	cl::WorkSize<3> workSize;

}
}
}