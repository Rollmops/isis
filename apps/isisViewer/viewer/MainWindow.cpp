/*
 * MainWindow.cpp
 *
 *  Created on: Nov 3, 2010
 *      Author: tuerke
 */

#include "MainWindow.hpp"
#include <common.hpp>
#include <DataStorage/io_factory.hpp>

namespace isis
{
namespace viewer
{

MainWindow::MainWindow( QViewerCore *core )
	: m_ViewerCore( core )
{
	actionMakeCurrent = new QAction( "Make current", this );
	actionAsZMap = new QAction( "Show as zmap", this );
	actionAsZMap->setCheckable( true );

	connect( ui.action_Exit, SIGNAL( triggered() ), this, SLOT( exitProgram() ) );
	connect( ui.actionShow_labels, SIGNAL( toggled( bool ) ), m_ViewerCore, SLOT( setShowLabels( bool ) ) );
	connect( ui.actionAutomatic_Scaling, SIGNAL( toggled( bool ) ), m_ViewerCore, SLOT( setAutomaticScaling( bool ) ) );
	connect( actionMakeCurrent, SIGNAL( triggered( bool ) ), this, SLOT( triggeredMakeCurrentImage( bool ) ) );
	connect( actionAsZMap, SIGNAL( triggered( bool ) ), this, SLOT( triggeredMakeCurrentImageZmap( bool ) ) );
	connect( core, SIGNAL( emitImagesChanged( DataContainer ) ), this, SLOT( imagesChanged( DataContainer ) ) );
	connect( core, SIGNAL( emitPhysicalCoordsChanged( util::fvector4 ) ), this, SLOT( physicalCoordsChanged( util::fvector4 ) ) );
	connect( ui.imageStack, SIGNAL( itemClicked( QListWidgetItem * ) ), this, SLOT( checkImageStack( QListWidgetItem * ) ) );
	connect( ui.imageStack, SIGNAL( itemDoubleClicked( QListWidgetItem * ) ), this, SLOT( doubleClickedMakeCurrentImage( QListWidgetItem * ) ) );
	connect( ui.action_Open_Image, SIGNAL( triggered() ), this, SLOT( openImage() ) );
	connect( ui.upperThreshold, SIGNAL( sliderMoved( int ) ), this, SLOT( upperThresholdChanged( int ) ) );
	connect( ui.lowerThreshold, SIGNAL( sliderMoved( int ) ), this, SLOT( lowerThresholdChanged( int ) ) );
	connect( ui.timestepSpinBox, SIGNAL( valueChanged( int ) ), m_ViewerCore, SLOT( timestepChanged( int ) ) ) ;
	connect( ui.interpolationType, SIGNAL( currentIndexChanged( int ) ), this, SLOT( interpolationChanged( int ) ) );
	//we need a master widget to keep opengl running in case all visible widgets were closed

	m_MasterWidget = new QGLWidgetImplementation( core, 0, axial );

	m_AxialWidget =  m_MasterWidget->createSharedWidget( ui.axialWidget, axial );
	m_ViewerCore->registerWidget( "axialView", m_AxialWidget );

	m_CoronalWidget = m_MasterWidget->createSharedWidget( ui.coronalWidget, coronal );
	m_ViewerCore->registerWidget( "coronalView", m_CoronalWidget );

	m_SagittalWidget = m_MasterWidget->createSharedWidget( ui.sagittalWidget, sagittal );
	m_ViewerCore->registerWidget( "sagittalView", m_SagittalWidget );

	ui.actionShow_labels->setCheckable( true );
	ui.actionShow_labels->setChecked( false );
	ui.imageStack->setContextMenuPolicy( Qt::CustomContextMenu );
	connect( ui.imageStack, SIGNAL( customContextMenuRequested( QPoint ) ), this, SLOT( contextMenuImageStack( QPoint ) ) );

}


void MainWindow::contextMenuImageStack( QPoint position )
{
	QList<QAction *> actions;

	if( ui.imageStack->indexAt( position ).isValid() ) {
		actions.append( actionMakeCurrent );
		actions.append( actionAsZMap );
	}

	QMenu::exec( actions, ui.imageStack->mapToGlobal( position ) );

}

void MainWindow::triggeredMakeCurrentImage( bool triggered )
{
	m_ViewerCore->setCurrentImage( m_ViewerCore->getDataContainer().at( ui.imageStack->currentItem()->text().toStdString() ) );
	if(m_ViewerCore->getCurrentImage()->getImageState().imageType == ImageHolder::z_map)
	{
		ui.lowerThreshold->setSliderPosition( 1000.0 / m_ViewerCore->getCurrentImage()->getMinMax().first->as<double>() *
			( m_ViewerCore->getCurrentImage()->getImageState().threshold.first  ) );
		ui.upperThreshold->setSliderPosition( 1000.0 / m_ViewerCore->getCurrentImage()->getMinMax().second->as<double>() *
			( m_ViewerCore->getCurrentImage()->getImageState().threshold.second ) );
	} else {
			double range = m_ViewerCore->getCurrentImage()->getMinMax().second->as<double>() - m_ViewerCore->getCurrentImage()->getMinMax().first->as<double>();
		ui.lowerThreshold->setSliderPosition( 1000.0 / range *
			( m_ViewerCore->getCurrentImage()->getImageState().threshold.first - m_ViewerCore->getCurrentImage()->getMinMax().first->as<double>() ) );
		ui.upperThreshold->setSliderPosition( 1000.0 / range *
			( m_ViewerCore->getCurrentImage()->getImageState().threshold.second - m_ViewerCore->getCurrentImage()->getMinMax().first->as<double>() ) );
	}
		
	
	imagesChanged( m_ViewerCore->getDataContainer() );
	m_ViewerCore->updateScene();
}

void MainWindow::triggeredMakeCurrentImageZmap( bool triggered )
{
	if( triggered ) {
		m_ViewerCore->getDataContainer()[ui.imageStack->currentItem()->text().toStdString()]->setImageType( ImageHolder::z_map );
	} else {
		m_ViewerCore->getDataContainer()[ui.imageStack->currentItem()->text().toStdString()]->setImageType( ImageHolder::anatomical_image );
	}

	m_ViewerCore->updateScene();
}


void MainWindow::doubleClickedMakeCurrentImage( QListWidgetItem * )
{
	triggeredMakeCurrentImage( true );
}


void MainWindow::physicalCoordsChanged( util::fvector4 coords )
{
	util::ivector4 voxelCoords = m_ViewerCore->getCurrentImage()->getImage()->getIndexFromPhysicalCoords( coords );
	data::Chunk ch = m_ViewerCore->getCurrentImage()->getImage()->getChunk( voxelCoords[0], voxelCoords[1], voxelCoords[2], voxelCoords[3] );

	switch( ch.getTypeID() ) {
	case data::ValuePtr<int8_t>::staticID:
		displayIntensity<int8_t>( voxelCoords );
		break;
	case data::ValuePtr<uint8_t>::staticID:
		displayIntensity<uint8_t>( voxelCoords );
		break;
	case data::ValuePtr<int16_t>::staticID:
		displayIntensity<int16_t>( voxelCoords );
		break;
	case data::ValuePtr<uint16_t>::staticID:
		displayIntensity<uint16_t>( voxelCoords );
		break;
	case data::ValuePtr<int32_t>::staticID:
		displayIntensity<int32_t>( voxelCoords );
		break;
	case data::ValuePtr<uint32_t>::staticID:
		displayIntensity<uint32_t>( voxelCoords );
		break;
	case data::ValuePtr<float>::staticID:
		displayIntensity<float>( voxelCoords );
		break;
	case data::ValuePtr<double>::staticID:
		displayIntensity<double>( voxelCoords );
		break;
	}

}

void MainWindow::imagesChanged( DataContainer images )
{
	ui.imageStack->clear();
	BOOST_FOREACH( DataContainer::const_reference imageRef, images ) {
		QListWidgetItem *item = new QListWidgetItem;
		QString sD = imageRef.second->getPropMap().getPropertyAs<std::string>( "sequenceDescription" ).c_str();
		item->setText( QString( imageRef.second->getFileNames().front().c_str() ) );
		item->setFlags( Qt::ItemIsEnabled | Qt::ItemIsUserCheckable | Qt::ItemIsSelectable );

		if( imageRef.second->getImageState().visible ) {
			item->setCheckState( Qt::Checked );
		} else {
			item->setCheckState( Qt::Unchecked );
		}

		if( m_ViewerCore->getCurrentImage().get() == imageRef.second.get() ) {
			item->setIcon( QIcon( ":/common/icon_check.png" ) );
		}

		ui.imageStack->addItem( item );
	}
	double min = roundNumber<double>( m_ViewerCore->getCurrentImage()->getMinMax().first->as<double>(), 2 );
	double max = roundNumber<double>( m_ViewerCore->getCurrentImage()->getMinMax().second->as<double>(), 2 );
	ui.minLabel->setText( QString::number( min ) );
	ui.maxLabel->setText( QString::number( max ) );
}

void MainWindow::openImage()
{
	QStringList filenames = QFileDialog::getOpenFileNames( this,
							tr( "Open images" ),
							m_CurrentPath,
							tr( "Image Files (*.v *.nii *.hdr *.dcm *.ima" ) );
	QDir dir;
	m_CurrentPath = dir.absoluteFilePath( filenames.front() );

	if( !filenames.empty() ) {
		std::list<data::Image> imgList;
		util::slist pathList;
		BOOST_FOREACH( QStringList::const_reference filename, filenames ) {
			std::list<data::Image> tempImgList = data::IOFactory::load( filename.toStdString() , "", "" );
			pathList.push_back( filename.toStdString() );
			BOOST_FOREACH( std::list<data::Image>::const_reference image, tempImgList ) {
				imgList.push_back( image );
			}
		}
		m_ViewerCore->addImageList( imgList, ImageHolder::anatomical_image );
		m_ViewerCore->updateScene();
	}
}


void MainWindow::checkImageStack( QListWidgetItem *item )
{
	if( item->checkState() == Qt::Checked ) {
		m_ViewerCore->getDataContainer().at( item->text().toStdString() )->setVisible( true );

	} else if( item->checkState() == Qt::Unchecked ) {
		m_ViewerCore->getDataContainer().at( item->text().toStdString() )->setVisible( false );
	}

	m_ViewerCore->updateScene();

}

void MainWindow::exitProgram()
{
	close();
}

void MainWindow::lowerThresholdChanged( int lowerThreshold )
{
	
	if(m_ViewerCore->getCurrentImage()->getImageState().imageType == ImageHolder::z_map)
	{
		m_ViewerCore->getCurrentImage()->setLowerThreshold( ( m_ViewerCore->getCurrentImage()->getMinMax().first->as<double>() / 1000 ) * ( lowerThreshold  ) );
	} else {
		double range = m_ViewerCore->getCurrentImage()->getMinMax().second->as<double>() - m_ViewerCore->getCurrentImage()->getMinMax().first->as<double>();
		m_ViewerCore->getCurrentImage()->setLowerThreshold( ( range / 1000 ) * ( lowerThreshold  ) + m_ViewerCore->getCurrentImage()->getMinMax().first->as<double>() );
	}
	m_ViewerCore->updateScene();
}

void MainWindow::upperThresholdChanged( int upperThreshold )
{
	if(m_ViewerCore->getCurrentImage()->getImageState().imageType == ImageHolder::z_map)
	{
		m_ViewerCore->getCurrentImage()->setUpperThreshold( (  m_ViewerCore->getCurrentImage()->getMinMax().second->as<double>() / 1000 ) * ( upperThreshold + 1 ) );
	} else {
		double range = m_ViewerCore->getCurrentImage()->getMinMax().second->as<double>() - m_ViewerCore->getCurrentImage()->getMinMax().first->as<double>();
		m_ViewerCore->getCurrentImage()->setUpperThreshold( ( range / 1000 ) * ( upperThreshold + 1 )  + m_ViewerCore->getCurrentImage()->getMinMax().first->as<double>() );
	}
	
	m_ViewerCore->updateScene();

}

void MainWindow::interpolationChanged( int index )
{
	util::Singletons::get<GLTextureHandler, 10>().forceReloadingAllOfType( ImageHolder::z_map, static_cast<GLTextureHandler::InterpolationType>( index ) );
	m_ViewerCore->updateScene();
}


}
} //end namespace
