#-------------------------------------------------------------------------------
# Modules
#-------------------------------------------------------------------------------
set( LIB_XRDCL_RECORDER_PLUGIN XrdClRecorder-${PLUGIN_VERSION} )

#-------------------------------------------------------------------------------
# XrdClRecorder library
#-------------------------------------------------------------------------------
add_library(
  ${LIB_XRDCL_RECORDER_PLUGIN}
  MODULE
  XrdClRecordPlugin/XrdClRecorderPlugin.cc )

target_link_libraries(${LIB_XRDCL_RECORDER_PLUGIN} XrdCl)

set_target_properties(
  ${LIB_XRDCL_RECORDER_PLUGIN}
  PROPERTIES
  INTERFACE_LINK_LIBRARIES ""
  LINK_INTERFACE_LIBRARIES "" )

#-------------------------------------------------------------------------------
# Install
#-------------------------------------------------------------------------------
