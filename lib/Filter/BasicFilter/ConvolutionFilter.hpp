#ifndef ISIS_FILTER_CONVOLUTION
#define ISIS_FILTER_CONVOLUTION

#include "../filter.hpp"
#include "../common.hpp"

namespace isis
{
namespace filter
{

class ConvolutionFilter : public ChunkFilterInPlace
{
	typedef float ValueType;
public:
	std::string getFilterName() const { return std::string( "ConvolveFilter" ); }
	std::string getDescription() const { return std::string( "Inplace filter that performs a convolution with a given kernel to a chunk." ); }
	bool isValid() const {
		return  !parameters["convolveRow"].isEmpty()
				&& !parameters["convolveColumn"].isEmpty()
				&& !parameters["convolveSlice"].isEmpty()
				&& !parameters["convolveTime"].isEmpty()
				&& ( additionalChunks.find( "kernelRow" ) != additionalChunks.end()
					 || additionalChunks.find( "kernelColumn" ) != additionalChunks.end()
					 || additionalChunks.find( "kernelSlice" ) != additionalChunks.end()
					 || additionalChunks.find( "kernelTime" ) != additionalChunks.end()
				   );
	}
	bool process( data::Chunk & );

private:
	void convolve( data::Chunk &chunk, const data::Chunk &kernel, data::dimensions dim );

};


}
}

#endif