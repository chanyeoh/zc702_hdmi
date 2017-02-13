
// *****************************************************
// Dependencies
// *****************************************************
#include "scaler_old.h"

// *****************************************************
// Private functions
// *****************************************************
static void ScalerSetup
(
	XScaler*     p_scaler_old_inst,
	unsigned int input_hsize,
	unsigned int input_vsize,
	unsigned int output_hsize,
	unsigned int output_vsize
)
{
	// Local variables
	unsigned char        chroma_format;
	unsigned char        chroma_luma_share_coef_bank;
	unsigned char        horizontal_vertical_share_coef_bank;
	XScalerAperture      aperture;
	XScalerStartFraction start_fraction;
	XScalerCoeffBank     coef_bank;

	// Disable scaler
	XScaler_Disable(p_scaler_old_inst);
	XScaler_DisableRegUpdate(p_scaler_old_inst);

	// Fetch Chroma Format and Coefficient sharing info
	XScaler_GetCoeffBankSharingInfo
	(
		p_scaler_old_inst,
		&chroma_format,
		&chroma_luma_share_coef_bank,
		&horizontal_vertical_share_coef_bank
	);

	coef_bank.SetIndex = 0;
	coef_bank.PhaseNum = p_scaler_old_inst->Config.MaxPhaseNum;
	coef_bank.TapNum   = p_scaler_old_inst->Config.VertTapNum;

	// Locate coefficients for Horizontal scaling
	coef_bank.CoeffValueBuf = XScaler_CoefValueLookup
	(
		input_hsize,
		output_hsize,
		coef_bank.TapNum,
		coef_bank.PhaseNum
	);

	// Load coefficient bank for Horizontal Luma
	XScaler_LoadCoeffBank(p_scaler_old_inst, &coef_bank);

	// Horizontal Chroma bank is loaded only if chroma/luma sharing flag is not set
	if (!chroma_luma_share_coef_bank)
	{
		XScaler_LoadCoeffBank(p_scaler_old_inst, &coef_bank);
	}

	// Vertical coeff banks are loaded only if horizontal/vertical sharing flag is not set
	if (!horizontal_vertical_share_coef_bank)
	{
		// Locate coefficients for Vertical scaling
		coef_bank.CoeffValueBuf = XScaler_CoefValueLookup
		(
			input_vsize,
			output_vsize,
			coef_bank.TapNum,
			coef_bank.PhaseNum
		);

		// Load coefficient bank for Vertical Luma
		XScaler_LoadCoeffBank(p_scaler_old_inst, &coef_bank);

		// Vertical Chroma coeff bank is loaded only if chroma/luma sharing flag is not set
		if (!chroma_luma_share_coef_bank)
		{
			XScaler_LoadCoeffBank(p_scaler_old_inst, &coef_bank);
		}
	}

	// Load phase-offsets
	start_fraction.LumaLeftHori   = 0;
	start_fraction.LumaTopVert    = 0;
	start_fraction.ChromaLeftHori = 0;
	start_fraction.ChromaTopVert  = 0;
	XScaler_SetStartFraction(p_scaler_old_inst, &start_fraction);

	// Set up Aperture.
	aperture.InFirstLine  = 0;
	aperture.InLastLine   = input_vsize - 1;
	aperture.InFirstPixel = 0;
	aperture.InLastPixel  = input_hsize - 1;
	aperture.OutVertSize  = output_vsize;
	aperture.OutHoriSize  = output_hsize;
	aperture.SrcVertSize  = input_vsize;
	aperture.SrcHoriSize  = input_hsize;
	XScaler_SetAperture(p_scaler_old_inst, &aperture);

	// Set up phases
	XScaler_SetPhaseNum
	(
		p_scaler_old_inst,
		p_scaler_old_inst->Config.MaxPhaseNum,
		p_scaler_old_inst->Config.MaxPhaseNum
	);

	// Choose active set indexes for both vertical and horizontal directions
	XScaler_SetActiveCoeffSet(p_scaler_old_inst, 0, 0);

	// Enable the scaling operation
	XScaler_EnableRegUpdate(p_scaler_old_inst);
	XScaler_Enable(p_scaler_old_inst);
}

// *****************************************************
// Public functions
// *****************************************************
unsigned int scaler_old_set_input_size
(
	XScaler*     p_scaler_old_inst,
	unsigned int hsize,
	unsigned int vsize,
	unsigned int print_config
)
{
	// Local variables
	unsigned int reg              = 0;
	unsigned int cur_output_hsize = 0;
	unsigned int cur_output_vsize = 0;
	
	// Get current output size settings
	reg = XScaler_ReadReg(p_scaler_old_inst->Config.BaseAddress, XSCL_OUTSIZE_OFFSET);
	cur_output_hsize = (reg & XSCL_OUTSIZE_NUMPXL_MASK);
	cur_output_vsize = (reg & XSCL_OUTSIZE_NUMLINE_MASK) >> XSCL_OUTSIZE_NUMLINE_SHIFT;
	
	// Program new scaler settings
	ScalerSetup(p_scaler_old_inst, hsize, vsize, cur_output_hsize, cur_output_vsize);

	return SCALER_OLD_SUCCESS;
}

unsigned int scaler_old_set_output_size
(
	XScaler*     p_scaler_old_inst,
	unsigned int hsize,
	unsigned int vsize,
	unsigned int print_config
)
{
	// Local variables
	unsigned int reg             = 0;
	unsigned int cur_input_hsize = 0;
	unsigned int cur_input_vsize = 0;
	
	// Get current output size settings
	reg = XScaler_ReadReg(p_scaler_old_inst->Config.BaseAddress, XSCL_SRCSIZE_OFFSET);
	cur_input_hsize = (reg & XSCL_SRCSIZE_NUMPXL_MASK);
	cur_input_vsize = (reg & XSCL_SRCSIZE_NUMLINE_MASK) >> XSCL_SRCSIZE_NUMLINE_SHIFT;
	
	// Program new scaler settings
	ScalerSetup(p_scaler_old_inst, cur_input_hsize, cur_input_vsize, hsize, vsize);

	return SCALER_OLD_SUCCESS;
}

