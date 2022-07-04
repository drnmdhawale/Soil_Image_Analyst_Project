/*
 * MATLAB Compiler: 4.13 (R2010a)
 * Date: Thu Dec 13 18:15:07 2012
 * Arguments: "-B" "macro_default" "-m" "-W" "main" "-T" "link:exe"
 * "folder_analyse" 
 */

#include "mclmcrrt.h"

#ifdef __cplusplus
extern "C" {
#endif
const unsigned char __MCC_folder_analyse_session_key[] = {
    'A', '6', '5', '8', '0', '8', 'E', 'C', 'E', '6', 'D', '1', '2', 'F', '1',
    '8', 'A', '1', '3', '5', 'B', '8', 'B', 'F', 'C', '5', '0', 'D', '9', '7',
    '7', 'A', '7', '0', 'F', '0', '5', 'B', 'E', '0', '5', 'D', '5', '2', '5',
    '4', '4', 'F', '5', 'A', '4', 'B', 'F', '8', '0', '3', 'A', '7', 'D', '9',
    '2', 'F', 'B', '0', 'A', '4', '3', 'A', '0', 'A', 'C', '6', '2', 'A', '3',
    '4', 'F', '9', 'A', '9', '2', '7', 'B', 'B', '9', '3', 'E', 'D', '5', 'C',
    'A', 'D', 'C', '6', '2', 'F', 'B', '5', '1', '8', 'C', '3', '1', '4', '7',
    '7', '6', '9', '4', '4', 'C', '4', '7', '3', '9', 'E', '3', '7', '1', '0',
    '5', 'D', 'D', 'D', 'B', '5', '1', '7', '0', '9', 'F', '0', 'E', 'B', '8',
    '3', 'C', '4', 'D', 'D', 'A', 'F', 'D', '0', '9', '2', 'A', 'D', 'B', '9',
    '6', 'D', '9', 'F', 'D', 'B', '9', '1', '5', '5', 'B', 'B', 'D', '2', '0',
    '1', 'E', '3', 'E', '1', '1', '0', 'B', 'B', 'F', '2', '5', 'E', '5', 'E',
    'E', '7', 'E', '4', '5', '7', 'A', 'F', 'F', 'E', '1', 'A', '6', 'C', '8',
    '4', 'B', '1', 'A', '9', 'E', '4', 'E', '6', 'D', 'F', '8', '9', 'A', '8',
    '0', '1', 'B', 'A', 'A', '9', 'F', '7', '6', '3', '8', '8', '3', '7', '3',
    '8', '0', 'F', 'D', 'C', 'D', 'D', 'E', '7', '7', 'A', '5', '1', 'C', 'F',
    'F', '5', 'D', 'D', '4', 'F', '6', '6', '8', '8', '9', 'B', '9', 'D', '1',
    '0', '\0'};

const unsigned char __MCC_folder_analyse_public_key[] = {
    '3', '0', '8', '1', '9', 'D', '3', '0', '0', 'D', '0', '6', '0', '9', '2',
    'A', '8', '6', '4', '8', '8', '6', 'F', '7', '0', 'D', '0', '1', '0', '1',
    '0', '1', '0', '5', '0', '0', '0', '3', '8', '1', '8', 'B', '0', '0', '3',
    '0', '8', '1', '8', '7', '0', '2', '8', '1', '8', '1', '0', '0', 'C', '4',
    '9', 'C', 'A', 'C', '3', '4', 'E', 'D', '1', '3', 'A', '5', '2', '0', '6',
    '5', '8', 'F', '6', 'F', '8', 'E', '0', '1', '3', '8', 'C', '4', '3', '1',
    '5', 'B', '4', '3', '1', '5', '2', '7', '7', 'E', 'D', '3', 'F', '7', 'D',
    'A', 'E', '5', '3', '0', '9', '9', 'D', 'B', '0', '8', 'E', 'E', '5', '8',
    '9', 'F', '8', '0', '4', 'D', '4', 'B', '9', '8', '1', '3', '2', '6', 'A',
    '5', '2', 'C', 'C', 'E', '4', '3', '8', '2', 'E', '9', 'F', '2', 'B', '4',
    'D', '0', '8', '5', 'E', 'B', '9', '5', '0', 'C', '7', 'A', 'B', '1', '2',
    'E', 'D', 'E', '2', 'D', '4', '1', '2', '9', '7', '8', '2', '0', 'E', '6',
    '3', '7', '7', 'A', '5', 'F', 'E', 'B', '5', '6', '8', '9', 'D', '4', 'E',
    '6', '0', '3', '2', 'F', '6', '0', 'C', '4', '3', '0', '7', '4', 'A', '0',
    '4', 'C', '2', '6', 'A', 'B', '7', '2', 'F', '5', '4', 'B', '5', '1', 'B',
    'B', '4', '6', '0', '5', '7', '8', '7', '8', '5', 'B', '1', '9', '9', '0',
    '1', '4', '3', '1', '4', 'A', '6', '5', 'F', '0', '9', '0', 'B', '6', '1',
    'F', 'C', '2', '0', '1', '6', '9', '4', '5', '3', 'B', '5', '8', 'F', 'C',
    '8', 'B', 'A', '4', '3', 'E', '6', '7', '7', '6', 'E', 'B', '7', 'E', 'C',
    'D', '3', '1', '7', '8', 'B', '5', '6', 'A', 'B', '0', 'F', 'A', '0', '6',
    'D', 'D', '6', '4', '9', '6', '7', 'C', 'B', '1', '4', '9', 'E', '5', '0',
    '2', '0', '1', '1', '1', '\0'};

static const char * MCC_folder_analyse_matlabpath_data[] = 
  { "folder_analy/", "$TOOLBOXDEPLOYDIR/", "$TOOLBOXMATLABDIR/general/",
    "$TOOLBOXMATLABDIR/ops/", "$TOOLBOXMATLABDIR/lang/",
    "$TOOLBOXMATLABDIR/elmat/", "$TOOLBOXMATLABDIR/randfun/",
    "$TOOLBOXMATLABDIR/elfun/", "$TOOLBOXMATLABDIR/specfun/",
    "$TOOLBOXMATLABDIR/matfun/", "$TOOLBOXMATLABDIR/datafun/",
    "$TOOLBOXMATLABDIR/polyfun/", "$TOOLBOXMATLABDIR/funfun/",
    "$TOOLBOXMATLABDIR/sparfun/", "$TOOLBOXMATLABDIR/scribe/",
    "$TOOLBOXMATLABDIR/graph2d/", "$TOOLBOXMATLABDIR/graph3d/",
    "$TOOLBOXMATLABDIR/specgraph/", "$TOOLBOXMATLABDIR/graphics/",
    "$TOOLBOXMATLABDIR/uitools/", "$TOOLBOXMATLABDIR/strfun/",
    "$TOOLBOXMATLABDIR/imagesci/", "$TOOLBOXMATLABDIR/iofun/",
    "$TOOLBOXMATLABDIR/audiovideo/", "$TOOLBOXMATLABDIR/timefun/",
    "$TOOLBOXMATLABDIR/datatypes/", "$TOOLBOXMATLABDIR/verctrl/",
    "$TOOLBOXMATLABDIR/codetools/", "$TOOLBOXMATLABDIR/helptools/",
    "$TOOLBOXMATLABDIR/winfun/", "$TOOLBOXMATLABDIR/winfun/NET/",
    "$TOOLBOXMATLABDIR/demos/", "$TOOLBOXMATLABDIR/timeseries/",
    "$TOOLBOXMATLABDIR/hds/", "$TOOLBOXMATLABDIR/guide/",
    "$TOOLBOXMATLABDIR/plottools/", "toolbox/local/",
    "$TOOLBOXMATLABDIR/datamanager/", "toolbox/compiler/",
    "toolbox/images/colorspaces/", "toolbox/images/images/",
    "toolbox/images/imuitools/", "toolbox/images/iptformats/",
    "toolbox/images/iptutils/", "toolbox/shared/imageslib/" };

static const char * MCC_folder_analyse_classpath_data[] = 
  { "java/jar/toolbox/images.jar" };

static const char * MCC_folder_analyse_libpath_data[] = 
  { "bin/win32/" };

static const char * MCC_folder_analyse_app_opts_data[] = 
  { "" };

static const char * MCC_folder_analyse_run_opts_data[] = 
  { "" };

static const char * MCC_folder_analyse_warning_state_data[] = 
  { "off:MATLAB:dispatcher:nameConflict" };


mclComponentData __MCC_folder_analyse_component_data = { 

  /* Public key data */
  __MCC_folder_analyse_public_key,

  /* Component name */
  "folder_analyse",

  /* Component Root */
  "",

  /* Application key data */
  __MCC_folder_analyse_session_key,

  /* Component's MATLAB Path */
  MCC_folder_analyse_matlabpath_data,

  /* Number of directories in the MATLAB Path */
  45,

  /* Component's Java class path */
  MCC_folder_analyse_classpath_data,
  /* Number of directories in the Java class path */
  1,

  /* Component's load library path (for extra shared libraries) */
  MCC_folder_analyse_libpath_data,
  /* Number of directories in the load library path */
  1,

  /* MCR instance-specific runtime options */
  MCC_folder_analyse_app_opts_data,
  /* Number of MCR instance-specific runtime options */
  0,

  /* MCR global runtime options */
  MCC_folder_analyse_run_opts_data,
  /* Number of MCR global runtime options */
  0,
  
  /* Component preferences directory */
  "folder_analy_5608CDF3AAE1AE00024873D66B72DF0D",

  /* MCR warning status data */
  MCC_folder_analyse_warning_state_data,
  /* Number of MCR warning status modifiers */
  1,

  /* Path to component - evaluated at runtime */
  NULL

};

#ifdef __cplusplus
}
#endif


