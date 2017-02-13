
#ifndef _SCALER_OLD_H_
#define _SCALER_OLD_H_

// *****************************************************
// Notes
// *****************************************************
//   - The purpose of this driver is to provide a layer
//     of abstraction over the Scaler v8.1 drivers. It
//     assumes the caller has allocated and initialized
//     the XScaler instance to be used.
//   - This driver always uses sets the aperature equal
//     to the entire input frame size.

// *****************************************************
// Dependencies
// *****************************************************
#include "xscaler.h"

// *****************************************************
// Function status return values
// *****************************************************
#define SCALER_OLD_SUCCESS        0
#define SCALER_OLD_ERROR_UNKNOWN -1

// *****************************************************
// Public functions
// *****************************************************

// scaler_old_set_input_size() - Set up the old scaler input size.
//   - p_scaler_old_inst - Pointer to object to work on
//   - hsize             - Horizontal input frame size (pixels per line)
//   - vsize             - Vertical input frame size (lines per frame)
//   - print_config      - Print scaler configuration
//   - return            - Function status return value (see above)
unsigned int scaler_old_set_input_size
(
	XScaler*     p_scaler_old_inst,
	unsigned int hsize,
	unsigned int vsize,
	unsigned int print_config
);

// scaler_old_set_output_size() - Set up the old scaler output size.
//   - p_scaler_old_inst - Pointer to object to work on
//   - hsize             - Horizontal output frame size (pixels per line)
//   - vsize             - Vertical output frame size (lines per frame)
//   - print_config      - Print scaler configuration
//   - return            - Function status return value (see above)
unsigned int scaler_old_set_output_size
(
	XScaler*     p_scaler_old_inst,
	unsigned int hsize,
	unsigned int vsize,
	unsigned int print_config
);

#endif // _SCALER_OLD_H_
