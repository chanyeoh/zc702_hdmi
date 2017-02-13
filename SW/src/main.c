
// *****************************************************
// Notes
// *****************************************************
// - The purpose of this appliction is to provide an
//   example of how to use the Video Processing
//   Subsystem in a typical video scaling design.
//
// - To interact with the design, connect a mini USB
//   cable to the USB UART connector on the ZC702. Then
//   use a terminal utility on the host to connect to
//   the serial device at 115200 baud.

// *****************************************************
// Dependencies
// *****************************************************
#include <stdio.h>
#include <stdlib.h>
#include "platform.h"
#include "periphs.h"
#include "xuartps_hw.h"

// *****************************************************
// Constants
// *****************************************************
#define FRAMEBUFFER_OLD_START_ADDR XPAR_PS7_DDR_0_S_AXI_BASEADDR + 0x10000000
#define FRAMEBUFFER_NEW_START_ADDR XPAR_PS7_DDR_0_S_AXI_BASEADDR + 0x20000000

// *****************************************************
// Globals
// *****************************************************
static periphs_t periphs_inst;

// *****************************************************
// Function prototypes
// *****************************************************
void main_menu();

// *****************************************************
// Main program entry point
// *****************************************************
int main()
{
	// Local variables
	int status = 0;

	// Setup UART and caches
    init_platform();
    xil_printf("\fHello World!\n\r");

    // Initialize peripherals
    status = periphs_init
    (
    	&periphs_inst,
    	XPAR_CONTROL_PATH_AXI_GPIO_0_DEVICE_ID,
    	XPAR_CONTROL_PATH_AXI_IIC_0_BASEADDR,
		XPAR_XIICPS_0_DEVICE_ID,
    	XPAR_VIDEO_PATH_HDMI_IN_VTD_DEVICE_ID,
    	XPAR_VIDEO_PATH_TPG_OLD_TPG_OLD_DEVICE_ID,
    	XPAR_VIDEO_PATH_TPG_NEW_TPG_NEW_DEVICE_ID,
    	XPAR_VIDEO_PATH_SCALER_OLD_DEVICE_ID,
    	XPAR_VIDEO_PATH_SCALER_NEW_V_PROC_SS_0_DEVICE_ID,
    	XPAR_VIDEO_PATH_FRAMEBUFFER_OLD_AXI_VDMA_OLD_DEVICE_ID,
    	XPAR_VIDEO_PATH_FRAMEBUFFER_NEW_AXI_VDMA_NEW_DEVICE_ID,
    	XPAR_VIDEO_PATH_HDMI_OUT_VTG_DEVICE_ID,
    	FRAMEBUFFER_OLD_START_ADDR,
    	FRAMEBUFFER_NEW_START_ADDR
    );
	if (status != 0)
	{
		xil_printf("Initialization failed.\n\r");
		return -1;
	}

	// Background process
	xil_printf("Initialization complete. Switching to background process.\n\r");
	main_menu();

    cleanup_platform();
    return 0;
}

void main_menu()
{
	// Local variables
	char c  = 0;
	int  ii = 0;

	// Main loop
	while (1)
	{		
		xil_printf("What would you like to do? Press 'p' to print available commands.\n\r");
		c = XUartPs_RecvByte(XPAR_PS7_UART_1_BASEADDR);
		
		switch (c)
		{
			case 'p':
				xil_printf("\n\r");
				xil_printf("------------- Scaler Demo -------------\n\r");
				xil_printf("'n' = Set to new scaler datapath\n\r");
				xil_printf("'o' = Set to old scaler datapath\n\r");
				xil_printf("'t' = Enable/bypass TPG in the new scaler datapath\n\r");
				xil_printf("'d' = Detect or set input frame size\n\r");
				xil_printf("'s' = Set output frame size\n\r");
				xil_printf("'p' = Print this menu\n\r");
				xil_printf("---------------------------------------\n\r");
				xil_printf("\n\r");
				break;
			case 'n':
				xil_printf("Using new VPSS-based scaler datapath.\n\r");
				periphs_select_scaler(&periphs_inst, PERIPHS_SEL_NEW_SCALER);
				break;
			case 'o':
				xil_printf("Using old scaler datapath.\n\r");
				periphs_select_scaler(&periphs_inst, PERIPHS_SEL_OLD_SCALER);
				break;
			case 't':
				xil_printf("Enabling/bypassing TPG.\n\r");
				periphs_toggle_tpg(&periphs_inst);
				break;
			case 'd':
				if (periphs_get_fmc_status(&periphs_inst))
				{
					xil_printf("FMC IMAGEON card is connected. Detecting input frame size.\n\r");
					periphs_detect_input_fsize(&periphs_inst);
				}
				else
				{
					while (1)
					{
						xil_printf("FMC IMAGEON card is not connected. Using internal TPG as video source. Please select a resolution to set it to. Press 'p' to print available resolutions.\n\r");
						c = XUartPs_RecvByte(XPAR_PS7_UART_1_BASEADDR);
						if (c == 'p')
						{
							xil_printf("\n\r");
							xil_printf("------------- Resolutions -------------\n\r");
							for (ii = 0; ii < NUM_VIDEO_RESOLUTIONS; ii++)
							{
								xil_printf("%d = %s\n\r", ii, vres_get_name(ii));
							}
							xil_printf("'p' = Print this menu\n\r");
							xil_printf("'q' = Quit\n\r");
							xil_printf("---------------------------------------\n\r");
							xil_printf("\n\r");
						}
						else if ((c == '0')||(c == '1')||(c == '2')||(c == '3')||(c == '4') ||
								 (c == '5')||(c == '6')||(c == '7')||(c == '8'))
						{
							periphs_set_input_fsize(&periphs_inst, (c-'0'));
							break;
						}
						else if (c == 'q')
						{
							break;
						}
						else
						{
							xil_printf("ERROR! Illegal character. Try again.\n\r");
						}
					}
					break;
				}
				break;
			case 's':
				while (1)
				{
					xil_printf("Setting output frame size. What resolution would you like? Press 'p' to print available resolutions.\n\r");
					c = XUartPs_RecvByte(XPAR_PS7_UART_1_BASEADDR);
					
					if (c == 'p')
					{
						xil_printf("\n\r");
						xil_printf("------------- Resolutions -------------\n\r");
						for (ii = 0; ii < NUM_VIDEO_RESOLUTIONS; ii++)
						{
							xil_printf("%d = %s\n\r", ii, vres_get_name(ii));
						}
						xil_printf("'p' = Print this menu\n\r");
						xil_printf("'q' = Quit\n\r");
						xil_printf("---------------------------------------\n\r");
						xil_printf("\n\r");
					}
					else if ((c == '0')||(c == '1')||(c == '2')||(c == '3')||(c == '4') ||
							 (c == '5')||(c == '6')||(c == '7')||(c == '8'))
					{
						periphs_update_output_fsize(&periphs_inst, (c-'0'));
						break;
					}
					else if (c == 'q')
					{
						break;
					}
					else
					{
						xil_printf("ERROR! Illegal character. Try again.\n\r");
					}
				}
				break;
			default:
				xil_printf("ERROR! Illegal character. Try again.\n\r");
				break;
		}
	}
}

