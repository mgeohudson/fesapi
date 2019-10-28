# Install script for directory: E:/prj/RESQML/fesapiEnv/fesapi/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "E:/prj/RESQML/fesapiEnv/fesapi/BUILD/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "E:/prj/RESQML/fesapiEnv/fesapi/BUILD/src/Debug/FesapiCpp.1.0.0.0.lib")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "E:/prj/RESQML/fesapiEnv/fesapi/BUILD/Debug/FesapiCpp.1.0.0.0.dll")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES "E:/prj/RESQML/fesapiEnv/fesapi/src/nsDefinitions.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/proxies" TYPE FILE FILES
    "E:/prj/RESQML/fesapiEnv/fesapi/src/proxies/envH.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/proxies/envStub.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/proxies/gsoap_eml2_1H.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/proxies/gsoap_eml2_1Stub.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/proxies/gsoap_eml2_2H.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/proxies/gsoap_eml2_2Stub.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/proxies/gsoap_resqml2_0_1H.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/proxies/gsoap_resqml2_0_1Stub.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/proxies/stdsoap2.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/common" TYPE FILE FILES
    "E:/prj/RESQML/fesapiEnv/fesapi/src/common/AbstractHdfProxy.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/common/AbstractObject.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/common/DataObjectRepository.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/common/EnumStringMapper.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/common/EpcDocument.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/common/EpcExternalPartReference.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/common/HdfProxy.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/common/HidtType.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/epc" TYPE FILE FILES
    "E:/prj/RESQML/fesapiEnv/fesapi/src/epc/ContentType.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/epc/CoreProperty.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/epc/FileContentType.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/epc/FileCoreProperties.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/epc/FilePart.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/epc/FileRelationship.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/epc/Package.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/epc/Relationship.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/resqml2" TYPE FILE FILES
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2/AbstractColumnLayerGridRepresentation.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2/AbstractFeature.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2/AbstractFeatureInterpretation.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2/AbstractGridRepresentation.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2/AbstractLocal3dCrs.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2/AbstractProperty.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2/AbstractRepresentation.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2/AbstractValuesProperty.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2/Activity.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2/ActivityTemplate.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2/GridConnectionSetRepresentation.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2/MdDatum.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2/PropertyKind.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2/PropertySet.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2/RepresentationSetRepresentation.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2/SubRepresentation.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2/TimeSeries.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2/WellboreFrameRepresentation.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/resqml2_0_1" TYPE FILE FILES
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/AbstractGeologicFeature.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/AbstractIjkGridRepresentation.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/AbstractOrganizationInterpretation.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/AbstractStratigraphicOrganizationInterpretation.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/AbstractSurfaceFrameworkRepresentation.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/AbstractSurfaceRepresentation.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/AbstractTechnicalFeature.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/Activity.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/ActivityTemplate.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/BlockedWellboreRepresentation.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/BoundaryFeature.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/BoundaryFeatureInterpretation.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/CategoricalProperty.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/CategoricalPropertySeries.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/CommentProperty.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/ContinuousProperty.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/ContinuousPropertySeries.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/DeviationSurveyRepresentation.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/DiscreteProperty.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/DiscretePropertySeries.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/EarthModelInterpretation.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/FaultInterpretation.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/FluidBoundaryFeature.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/FrontierFeature.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/GenericFeatureInterpretation.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/GeneticBoundaryFeature.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/GeobodyBoundaryInterpretation.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/GeobodyFeature.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/GeobodyInterpretation.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/GeologicUnitFeature.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/Grid2dRepresentation.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/GridConnectionSetRepresentation.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/HdfProxy.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/Horizon.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/HorizonInterpretation.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/IjkGridExplicitRepresentation.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/IjkGridLatticeRepresentation.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/IjkGridNoGeometryRepresentation.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/IjkGridParametricRepresentation.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/LocalDepth3dCrs.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/LocalTime3dCrs.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/MdDatum.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/NonSealedSurfaceFrameworkRepresentation.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/OrganizationFeature.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/PlaneSetRepresentation.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/PointSetRepresentation.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/PolylineRepresentation.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/PolylineSetRepresentation.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/PropertyKind.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/PropertyKindMapper.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/PropertySet.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/RepresentationSetRepresentation.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/RockFluidOrganizationInterpretation.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/RockFluidUnitFeature.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/RockFluidUnitInterpretation.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/SealedSurfaceFrameworkRepresentation.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/SealedVolumeFrameworkRepresentation.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/SeismicLatticeFeature.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/SeismicLineFeature.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/SeismicLineSetFeature.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/StratigraphicColumn.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/StratigraphicColumnRankInterpretation.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/StratigraphicOccurrenceInterpretation.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/StratigraphicUnitFeature.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/StratigraphicUnitInterpretation.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/StringTableLookup.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/StructuralOrganizationInterpretation.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/SubRepresentation.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/TectonicBoundaryFeature.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/TimeSeries.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/TriangulatedSetRepresentation.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/UnstructuredGridRepresentation.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/WellboreFeature.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/WellboreFrameRepresentation.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/WellboreInterpretation.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/WellboreMarker.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/WellboreMarkerFrameRepresentation.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/resqml2_0_1/WellboreTrajectoryRepresentation.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/witsml2_0" TYPE FILE FILES
    "E:/prj/RESQML/fesapiEnv/fesapi/src/witsml2_0/AbstractObject.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/witsml2_0/MacroDefinitions.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/witsml2_0/Trajectory.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/witsml2_0/Well.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/witsml2_0/WellCompletion.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/witsml2_0/Wellbore.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/witsml2_0/WellboreCompletion.h"
    "E:/prj/RESQML/fesapiEnv/fesapi/src/witsml2_0/WellboreObject.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/resources" TYPE FILE FILES "E:/prj/RESQML/fesapiEnv/fesapi/resources/PropertyKindMapping.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE FILE FILES
    "E:/prj/RESQML/fesapiEnv/fesapi/LICENSE"
    "E:/prj/RESQML/fesapiEnv/fesapi/NOTICE"
    )
endif()

