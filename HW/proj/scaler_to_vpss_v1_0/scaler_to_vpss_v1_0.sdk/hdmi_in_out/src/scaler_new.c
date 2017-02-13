
// *****************************************************
// Dependencies
// *****************************************************
#include "scaler_new.h"

// *****************************************************
// Private functions
// *****************************************************

// scaler_new_set_stream() - Configure VPSS stream parameters. Taken from 
//                           VPSS driver example software.
//   - p_vpss_inst   - Pointer to object to work on
//   - direction     - When 0, configure input stream. Otherwise, configure output stream
//   - width         - Horizontal active size to use
//   - height        - Vertical active size to use
//   - color_format  - Color format to use
//   - is_interlaced - When 0, configure for progressive. When 1, configure for interlaced
//   - return        - None
void scaler_new_set_stream
(
	XVprocSs*         p_vpss_inst,
	unsigned short    direction,
	unsigned short    width,
	unsigned short    height,
	XVidC_ColorFormat color_format,
	unsigned short    is_interlaced
)
{
	// Local variables
	XVidC_VideoMode resId;
	XVidC_VideoStream Stream;

	// Get resolution ID from frame size
	resId = XVidC_GetVideoModeId(width, height, XVIDC_FR_60HZ, FALSE);

	// Setup Video Processing Subsystem
	Stream.VmId           = resId;
	Stream.Timing.HActive = width;
	Stream.Timing.VActive = height;
	Stream.ColorFormatId  = color_format;
	Stream.ColorDepth     = p_vpss_inst->Config.ColorDepth;
	Stream.PixPerClk      = p_vpss_inst->Config.PixPerClock;
	Stream.FrameRate      = XVIDC_FR_60HZ;
	Stream.IsInterlaced   = is_interlaced;

	if(direction == 0)
	{
		XVprocSs_SetVidStreamIn(p_vpss_inst, &Stream);
	}
	else
	{
		XVprocSs_SetVidStreamOut(p_vpss_inst, &Stream);
	}
}

// *****************************************************
// Public functions
// *****************************************************
unsigned int scaler_new_set_input_size
(
	XVprocSs*    p_scaler_new_inst,
	unsigned int hsize,
	unsigned int vsize,
	unsigned int print_config
)
{
	// Local variables
	int        status        = 0;
	static int is_first_time = 1;
	
	// The VPSS needs a valid config for both input and output the first time
	// XVprocSs_SetSubsystemConfig() is called, otherwise error
	if (is_first_time)
	{
		scaler_new_set_stream
		(
			p_scaler_new_inst,
			1, // Output stream
			hsize,
			vsize,
			XVIDC_CSF_YCRCB_422,
			0 // Interlaced
		);
		is_first_time = 0;
	}
	
	scaler_new_set_stream
	(
		p_scaler_new_inst,
		0, // Input stream
		hsize,
		vsize,
		XVIDC_CSF_YCRCB_422,
		0 // Interlaced
	);
	
	status = XVprocSs_SetSubsystemConfig(p_scaler_new_inst);
	if (status != 0)
	{
		xil_printf("ERROR! Failed to set VPSS-based scaler.\n\r");
		return SCALER_NEW_ERROR_UNKNOWN;
	}
	
	if (print_config)
	{
		XVprocSs_ReportSubsystemConfig(p_scaler_new_inst);
	}
	
	return SCALER_NEW_SUCCESS;
}

unsigned int scaler_new_set_output_size
(
	XVprocSs*    p_scaler_new_inst,
	unsigned int hsize,
	unsigned int vsize,
	unsigned int print_config
)
{
	// Local variables
	int        status        = 0;
	static int is_first_time = 1;
	
	// The VPSS needs a valid config for both input and output the first time
	// XVprocSs_SetSubsystemConfig() is called, otherwise error
	if (is_first_time)
	{
		scaler_new_set_stream
		(
			p_scaler_new_inst,
			0, // Input stream
			hsize,
			vsize,
			XVIDC_CSF_YCRCB_422,
			0 // Interlaced
		);
		is_first_time = 0;
	}
	
	scaler_new_set_stream
	(
		p_scaler_new_inst,
		1,
		hsize,
		vsize,
		XVIDC_CSF_YCRCB_422,
		0
	);
	
	status = XVprocSs_SetSubsystemConfig(p_scaler_new_inst);
	if (status != 0)
	{
		xil_printf("ERROR! Failed to set VPSS-based scaler.\n\r");
		return SCALER_NEW_ERROR_UNKNOWN;
	}
	
	if (print_config)
	{
		XVprocSs_ReportSubsystemConfig(p_scaler_new_inst);
	}
	
	return SCALER_NEW_SUCCESS;
}

