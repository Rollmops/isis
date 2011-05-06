
#include "ImageHolder.hpp"

namespace isis
{
namespace viewer
{

ImageHolder::ImageHolder( )
	: m_NumberOfTimeSteps( 0 ),
	  m_CutAwayPair( std::make_pair<double, double>( 0.03, 0.03 ) )
{
}

/*
bool
ImageHolder::filterRelevantMetaInformation()
{
	std::vector<boost::shared_ptr< data::Chunk > > chunkList = m_Image->getChunksAsVector();

	// in case we get more chunks than timesteps we should filter the chunk metadata
	if( chunkList.size() > m_NumberOfTimeSteps ) {
		if( chunkList.size() % m_NumberOfTimeSteps ) {
			LOG( Runtime, warning ) << "Cannot filter the metadata for each timestep. Your image contains of "
									<< chunkList.size() << " chunks and " << m_NumberOfTimeSteps
									<< " timesteps. The number of chunks should be a multiple of number of timesteps!";
			return false;
		} else {
			size_t factor = chunkList.size() / m_NumberOfTimeSteps;

			for ( size_t t = 0; t < chunkList.size(); t += factor ) {
				m_TimeStepProperties.push_back( *( chunkList.operator[]( t ) ) );
			}

			if( m_TimeStepProperties.size() != m_NumberOfTimeSteps ) {
				LOG(  Runtime, warning ) << "Something went wrong while filtering the properties of each timestep. We got "
										 << m_TimeStepProperties.size() << " timestep properties for " << m_NumberOfTimeSteps << " timestep.";
				return false;
			}
		}
	}

	return true;
}*/

boost::numeric::ublas::matrix< float > ImageHolder::getNormalizedImageOrientation( bool transposed ) const
{
	boost::numeric::ublas::matrix<float> retMatrix = boost::numeric::ublas::zero_matrix<float>( 4, 4 );
	retMatrix( 3, 3 ) = 1;
	util::fvector4 rowVec = m_Image->getPropertyAs<util::fvector4>( "rowVec" );
	util::fvector4 columnVec = m_Image->getPropertyAs<util::fvector4>( "columnVec" );
	util::fvector4 sliceVec = m_Image->getPropertyAs<util::fvector4>( "sliceVec" );

	for ( size_t i = 0; i < 3; i++ ) {
		if( !transposed ) {
			retMatrix( i, 0 ) = rowVec[i] < 0 ? ceil( rowVec[i] - 0.5 ) : floor( rowVec[i] + 0.5 );
			retMatrix( i, 1 ) = columnVec[i] < 0 ? ceil( columnVec[i] - 0.5 ) : floor( columnVec[i] + 0.5 );
			retMatrix( i, 2 ) = sliceVec[i] < 0 ? ceil( sliceVec[i] - 0.5 ) : floor( sliceVec[i] + 0.5 );
		} else {
			retMatrix( 0, i ) = rowVec[i] < 0 ? ceil( rowVec[i] - 0.5 ) : floor( rowVec[i] + 0.5 );
			retMatrix( 1, i ) = columnVec[i] < 0 ? ceil( columnVec[i] - 0.5 ) : floor( columnVec[i] + 0.5 );
			retMatrix( 2, i ) = sliceVec[i] < 0 ? ceil( sliceVec[i] - 0.5 ) : floor( sliceVec[i] + 0.5 );
		}
	}

	return retMatrix;
}

boost::numeric::ublas::matrix< float > ImageHolder::getImageOrientation( bool transposed ) const
{
	boost::numeric::ublas::matrix<float> retMatrix = boost::numeric::ublas::zero_matrix<float>( 4, 4 );
	retMatrix( 3, 3 ) = 1;
	util::fvector4 rowVec = m_Image->getPropertyAs<util::fvector4>( "rowVec" );
	util::fvector4 columnVec = m_Image->getPropertyAs<util::fvector4>( "columnVec" );
	util::fvector4 sliceVec = m_Image->getPropertyAs<util::fvector4>( "sliceVec" );

	for ( size_t i = 0; i < 3; i++ ) {
		if( !transposed ) {
			retMatrix( i, 0 ) = rowVec[i];
			retMatrix( i, 1 ) = columnVec[i];
			retMatrix( i, 2 ) = sliceVec[i];
		} else {
			retMatrix( 0, i ) = rowVec[i];
			retMatrix( 1, i ) = columnVec[i];
			retMatrix( 2, i ) = sliceVec[i];
		}
	}
	return retMatrix;
}

bool ImageHolder::setImage( const data::Image &image, const ImageType &imageType, const std::string &filename )
{

	//we convert the image to an uint8_t data type
	typedef uint8_t TYPE;

	//some checks
	if( image.isEmpty() ) {
		LOG( Runtime, error ) << "Getting an empty image? Obviously something went wrong.";
		return false;
	}

	m_Image.reset( new data::Image( image ) );

	//if no filename was specified we have to search for the filename by ourselfes
	if( filename.empty() ) {
		// go through all the chunks and search for filenames. We use a set here to avoid redundantly filenames
		std::set<std::string> filenameSet;
		BOOST_FOREACH( std::vector< data::Chunk >::const_reference chRef, image.copyChunksToVector() ) {
			filenameSet.insert( chRef.getPropertyAs<std::string>( "source" ) );
		}
		//now we pack our filenameSet into our slist of filenames
		BOOST_FOREACH( std::set<std::string>::const_reference setRef, filenameSet ) {
			m_Filenames.push_back( setRef );
		}
	} else {
		m_Filenames.push_back( filename );
	}

	// get some image information
	m_MinMax = image.getMinMax();
	m_ImageSize = image.getSizeAsVector();
	m_NumberOfTimeSteps = m_ImageSize[3];
	LOG( Debug, verbose_info )  << "Fetched image of size " << m_ImageSize << " and type "
								<< image.getMajorTypeName() << ".";
	//copy the image into continuous memory space and assure consistent data type
	data::ValuePtr<TYPE> imagePtr( ( TYPE * ) calloc( image.getVolume(), sizeof( TYPE ) ), image.getVolume() );
	LOG( Debug, verbose_info ) << "Needed memory: " << image.getVolume() * sizeof( TYPE ) / ( 1024.0 * 1024.0 ) << " mb.";
	image.copyToMem<TYPE>( &imagePtr[0] );
	LOG( Debug, verbose_info ) << "Copied image to continuous memory space.";
	m_InternMinMax = imagePtr.getMinMax();

	//splice the image in its volumes -> we get a vector of t volumes
	if( m_NumberOfTimeSteps > 1 ) { //splicing is only necessary if we got more than 1 timestep
		m_ImageVector = imagePtr.splice( m_ImageSize[0] * m_ImageSize[1] * m_ImageSize[2] );
	} else {
		m_ImageVector.push_back( imagePtr );
	}

	LOG_IF( m_ImageVector.empty(), Runtime, error ) << "Size of image vector is 0!";

	if( m_ImageVector.size() != m_NumberOfTimeSteps ) {
		LOG( Runtime, error ) << "The number of timesteps (" << m_NumberOfTimeSteps
							  << ") does not coincide with the number of volumes ("  << m_ImageVector.size() << ").";
		return false;
	}

	LOG( Debug, verbose_info ) << "Spliced image to " << m_ImageVector.size() << " volumes.";

	//copy all the relevant meta information
	m_PropMap = static_cast<util::PropertyMap>( image );
	m_OptimalScalingPair = getOptimalScalingToForType<TYPE>( m_CutAwayPair );
	//image seems to be ok...i guess
	m_ImageState.imageType = imageType;
	m_ImageState.visible = true;
	if( imageType == anatomical_image) {
		m_ImageState.threshold = std::make_pair<double, double>( m_MinMax.first->as<double>(), m_MinMax.second->as<double>() );
	} else if (imageType == z_map ) {
		m_ImageState.threshold = std::make_pair<double, double>(0,0);
	}
	m_ImageState.opacity = 1.0;
	m_Image->updateOrientationMatrices();
	return true;
}

}
} //end namespace

