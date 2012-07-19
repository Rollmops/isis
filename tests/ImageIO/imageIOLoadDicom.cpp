/*
* imageTest.cpp
*
*  Created on: Oct 1, 2009
*      Author: proeger
*/

#define BOOST_TEST_MODULE ImageLoadTest
#include <boost/test/unit_test.hpp>
#include <boost/foreach.hpp>

#include <DataStorage/image.hpp>
#include <DataStorage/io_factory.hpp>
#include <CoreUtils/log.hpp>

namespace isis
{
namespace test
{

BOOST_AUTO_TEST_CASE ( imageDicomtest )
{
	ENABLE_LOG( CoreLog, util::DefaultMsgPrint, warning );
	ENABLE_LOG( CoreDebug, util::DefaultMsgPrint, warning );
	ENABLE_LOG( DataLog, util::DefaultMsgPrint, warning );
	ENABLE_LOG( DataDebug, util::DefaultMsgPrint, warning );
	ENABLE_LOG( ImageIoLog, util::DefaultMsgPrint, warning );
	ENABLE_LOG( ImageIoDebug, util::DefaultMsgPrint, warning );
	std::list<data::Image> images = data::IOFactory::load( "/SCR/isis_build/testDicom.ima", "" );
	BOOST_CHECK( images.size() == 1 );
}
}
}
