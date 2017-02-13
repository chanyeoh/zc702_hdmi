
// *****************************************************
// Dependencies
// *****************************************************
#include "test_pattern_gen.h"

// *****************************************************
// Private functions
// *****************************************************

// print_tpg_regs() - Print the current state of the relevant
//                    TPG registers for debugging purposes.
//   - p_tpg_inst - Pointer to object to work on
//   - return     - None
static void print_tpg_regs
(
	XV_tpg* p_tpg_inst
)
{
	xil_printf("TPG offset 0x%02x = 0x%08X\n\r", 0x00, XV_tpg_ReadReg(p_tpg_inst->Config.BaseAddress, 0x00));
	xil_printf("TPG offset 0x%02x = 0x%08X\n\r", 0x10, XV_tpg_ReadReg(p_tpg_inst->Config.BaseAddress, 0x10));
	xil_printf("TPG offset 0x%02x = 0x%08X\n\r", 0x18, XV_tpg_ReadReg(p_tpg_inst->Config.BaseAddress, 0x18));
	xil_printf("TPG offset 0x%02x = 0x%08X\n\r", 0x20, XV_tpg_ReadReg(p_tpg_inst->Config.BaseAddress, 0x20));
	xil_printf("TPG offset 0x%02x = 0x%08X\n\r", 0x28, XV_tpg_ReadReg(p_tpg_inst->Config.BaseAddress, 0x28));
	xil_printf("TPG offset 0x%02x = 0x%08X\n\r", 0x30, XV_tpg_ReadReg(p_tpg_inst->Config.BaseAddress, 0x30));
	xil_printf("TPG offset 0x%02x = 0x%08X\n\r", 0x40, XV_tpg_ReadReg(p_tpg_inst->Config.BaseAddress, 0x40));
	xil_printf("TPG offset 0x%02x = 0x%08X\n\r", 0x98, XV_tpg_ReadReg(p_tpg_inst->Config.BaseAddress, 0x98));
	xil_printf("TPG offset 0x%02x = 0x%08X\n\r", 0xA0, XV_tpg_ReadReg(p_tpg_inst->Config.BaseAddress, 0xA0));
	xil_printf("TPG offset 0x%02x = 0x%08X\n\r", 0xA8, XV_tpg_ReadReg(p_tpg_inst->Config.BaseAddress, 0xA8));
	xil_printf("TPG offset 0x%02x = 0x%08X\n\r", 0xB0, XV_tpg_ReadReg(p_tpg_inst->Config.BaseAddress, 0xB0));
	xil_printf("TPG offset 0x%02x = 0x%08X\n\r", 0xB8, XV_tpg_ReadReg(p_tpg_inst->Config.BaseAddress, 0xB8));
}

// *****************************************************
// Public functions
// *****************************************************

void test_pattern_gen_run
(
	XV_tpg*       p_tpg_inst,
	unsigned int  hsize,
	unsigned int  vsize,
	unsigned int  bypass,
	unsigned int  box_is_blue,
	unsigned char print_regs
)
{
	XV_tpg_Set_colorFormat(p_tpg_inst, 0x2); // YUV 422
	XV_tpg_Set_bckgndId(p_tpg_inst, XTPG_BKGND_COLOR_BARS);
	XV_tpg_Set_motionSpeed(p_tpg_inst, 2);
	XV_tpg_Set_boxSize(p_tpg_inst, 100);
	XV_tpg_Set_boxColorR(p_tpg_inst, 16);  // Y
	XV_tpg_Set_boxColorG(p_tpg_inst, (box_is_blue ? 235 : 0));   // Cr
	XV_tpg_Set_boxColorB(p_tpg_inst, (box_is_blue ? 0   : 235)); // Cb
	XV_tpg_Set_ovrlayId(p_tpg_inst, !bypass); // Enable moving box only when TPG mode is on
	XV_tpg_Set_enableInput(p_tpg_inst, bypass);
	XV_tpg_Set_passthruStartX(p_tpg_inst, 0);
	XV_tpg_Set_passthruStartY(p_tpg_inst, 0);
	//XV_tpg_Set_passthruEndX(p_tpg_inst, hsize-1);
	XV_tpg_Set_passthruEndX(p_tpg_inst, hsize);
	//XV_tpg_Set_passthruEndY(p_tpg_inst, vsize-1);
	XV_tpg_Set_passthruEndY(p_tpg_inst, vsize);
	XV_tpg_Set_height(p_tpg_inst, vsize);
	XV_tpg_Set_width(p_tpg_inst, hsize);
	XV_tpg_WriteReg(p_tpg_inst->Config.BaseAddress, XV_TPG_CTRL_ADDR_AP_CTRL, 0x81);
	if (print_regs)
	{
		print_tpg_regs(p_tpg_inst);
	}
}

