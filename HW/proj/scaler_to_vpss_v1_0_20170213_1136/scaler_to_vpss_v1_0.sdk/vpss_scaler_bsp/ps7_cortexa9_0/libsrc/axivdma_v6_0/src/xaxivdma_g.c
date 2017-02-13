
/*******************************************************************
*
* CAUTION: This file is automatically generated by HSI.
* Version: 
* DO NOT EDIT.
*
* Copyright (C) 2010-2017 Xilinx, Inc. All Rights Reserved.*
*Permission is hereby granted, free of charge, to any person obtaining a copy
*of this software and associated documentation files (the Software), to deal
*in the Software without restriction, including without limitation the rights
*to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
*copies of the Software, and to permit persons to whom the Software is
*furnished to do so, subject to the following conditions:
*
*The above copyright notice and this permission notice shall be included in
*all copies or substantial portions of the Software.
* 
* Use of the Software is limited solely to applications:
*(a) running on a Xilinx device, or
*(b) that interact with a Xilinx device through a bus or interconnect.
*
*THE SOFTWARE IS PROVIDED AS IS, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
*IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
*FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL 
*XILINX BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
*WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT
*OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*
*Except as contained in this notice, the name of the Xilinx shall not be used
*in advertising or otherwise to promote the sale, use or other dealings in
*this Software without prior written authorization from Xilinx.
*

* 
* Description: Driver configuration
*
*******************************************************************/

#include "xparameters.h"
#include "xaxivdma.h"

/*
* The configuration table for devices
*/

XAxiVdma_Config XAxiVdma_ConfigTable[] =
{
	{
		XPAR_VIDEO_PATH_FRAMEBUFFER_NEW_AXI_VDMA_NEW_DEVICE_ID,
		XPAR_VIDEO_PATH_FRAMEBUFFER_NEW_AXI_VDMA_NEW_BASEADDR,
		XPAR_VIDEO_PATH_FRAMEBUFFER_NEW_AXI_VDMA_NEW_NUM_FSTORES,
		XPAR_VIDEO_PATH_FRAMEBUFFER_NEW_AXI_VDMA_NEW_INCLUDE_MM2S,
		XPAR_VIDEO_PATH_FRAMEBUFFER_NEW_AXI_VDMA_NEW_INCLUDE_MM2S_DRE,
		XPAR_VIDEO_PATH_FRAMEBUFFER_NEW_AXI_VDMA_NEW_M_AXI_MM2S_DATA_WIDTH,
		XPAR_VIDEO_PATH_FRAMEBUFFER_NEW_AXI_VDMA_NEW_INCLUDE_S2MM,
		XPAR_VIDEO_PATH_FRAMEBUFFER_NEW_AXI_VDMA_NEW_INCLUDE_S2MM_DRE,
		XPAR_VIDEO_PATH_FRAMEBUFFER_NEW_AXI_VDMA_NEW_M_AXI_S2MM_DATA_WIDTH,
		XPAR_VIDEO_PATH_FRAMEBUFFER_NEW_AXI_VDMA_NEW_INCLUDE_SG,
		XPAR_VIDEO_PATH_FRAMEBUFFER_NEW_AXI_VDMA_NEW_ENABLE_VIDPRMTR_READS,
		XPAR_VIDEO_PATH_FRAMEBUFFER_NEW_AXI_VDMA_NEW_USE_FSYNC,
		XPAR_VIDEO_PATH_FRAMEBUFFER_NEW_AXI_VDMA_NEW_FLUSH_ON_FSYNC,
		XPAR_VIDEO_PATH_FRAMEBUFFER_NEW_AXI_VDMA_NEW_MM2S_LINEBUFFER_DEPTH,
		XPAR_VIDEO_PATH_FRAMEBUFFER_NEW_AXI_VDMA_NEW_S2MM_LINEBUFFER_DEPTH,
		XPAR_VIDEO_PATH_FRAMEBUFFER_NEW_AXI_VDMA_NEW_MM2S_GENLOCK_MODE,
		XPAR_VIDEO_PATH_FRAMEBUFFER_NEW_AXI_VDMA_NEW_S2MM_GENLOCK_MODE,
		XPAR_VIDEO_PATH_FRAMEBUFFER_NEW_AXI_VDMA_NEW_INCLUDE_INTERNAL_GENLOCK,
		XPAR_VIDEO_PATH_FRAMEBUFFER_NEW_AXI_VDMA_NEW_S2MM_SOF_ENABLE,
		XPAR_VIDEO_PATH_FRAMEBUFFER_NEW_AXI_VDMA_NEW_M_AXIS_MM2S_TDATA_WIDTH,
		XPAR_VIDEO_PATH_FRAMEBUFFER_NEW_AXI_VDMA_NEW_S_AXIS_S2MM_TDATA_WIDTH,
		XPAR_VIDEO_PATH_FRAMEBUFFER_NEW_AXI_VDMA_NEW_ENABLE_DEBUG_INFO_1,
		XPAR_VIDEO_PATH_FRAMEBUFFER_NEW_AXI_VDMA_NEW_ENABLE_DEBUG_INFO_5,
		XPAR_VIDEO_PATH_FRAMEBUFFER_NEW_AXI_VDMA_NEW_ENABLE_DEBUG_INFO_6,
		XPAR_VIDEO_PATH_FRAMEBUFFER_NEW_AXI_VDMA_NEW_ENABLE_DEBUG_INFO_7,
		XPAR_VIDEO_PATH_FRAMEBUFFER_NEW_AXI_VDMA_NEW_ENABLE_DEBUG_INFO_9,
		XPAR_VIDEO_PATH_FRAMEBUFFER_NEW_AXI_VDMA_NEW_ENABLE_DEBUG_INFO_13,
		XPAR_VIDEO_PATH_FRAMEBUFFER_NEW_AXI_VDMA_NEW_ENABLE_DEBUG_INFO_14,
		XPAR_VIDEO_PATH_FRAMEBUFFER_NEW_AXI_VDMA_NEW_ENABLE_DEBUG_INFO_15,
		XPAR_VIDEO_PATH_FRAMEBUFFER_NEW_AXI_VDMA_NEW_ENABLE_DEBUG_ALL,
		XPAR_VIDEO_PATH_FRAMEBUFFER_NEW_AXI_VDMA_NEW_ADDR_WIDTH
	},
	{
		XPAR_VIDEO_PATH_FRAMEBUFFER_OLD_AXI_VDMA_OLD_DEVICE_ID,
		XPAR_VIDEO_PATH_FRAMEBUFFER_OLD_AXI_VDMA_OLD_BASEADDR,
		XPAR_VIDEO_PATH_FRAMEBUFFER_OLD_AXI_VDMA_OLD_NUM_FSTORES,
		XPAR_VIDEO_PATH_FRAMEBUFFER_OLD_AXI_VDMA_OLD_INCLUDE_MM2S,
		XPAR_VIDEO_PATH_FRAMEBUFFER_OLD_AXI_VDMA_OLD_INCLUDE_MM2S_DRE,
		XPAR_VIDEO_PATH_FRAMEBUFFER_OLD_AXI_VDMA_OLD_M_AXI_MM2S_DATA_WIDTH,
		XPAR_VIDEO_PATH_FRAMEBUFFER_OLD_AXI_VDMA_OLD_INCLUDE_S2MM,
		XPAR_VIDEO_PATH_FRAMEBUFFER_OLD_AXI_VDMA_OLD_INCLUDE_S2MM_DRE,
		XPAR_VIDEO_PATH_FRAMEBUFFER_OLD_AXI_VDMA_OLD_M_AXI_S2MM_DATA_WIDTH,
		XPAR_VIDEO_PATH_FRAMEBUFFER_OLD_AXI_VDMA_OLD_INCLUDE_SG,
		XPAR_VIDEO_PATH_FRAMEBUFFER_OLD_AXI_VDMA_OLD_ENABLE_VIDPRMTR_READS,
		XPAR_VIDEO_PATH_FRAMEBUFFER_OLD_AXI_VDMA_OLD_USE_FSYNC,
		XPAR_VIDEO_PATH_FRAMEBUFFER_OLD_AXI_VDMA_OLD_FLUSH_ON_FSYNC,
		XPAR_VIDEO_PATH_FRAMEBUFFER_OLD_AXI_VDMA_OLD_MM2S_LINEBUFFER_DEPTH,
		XPAR_VIDEO_PATH_FRAMEBUFFER_OLD_AXI_VDMA_OLD_S2MM_LINEBUFFER_DEPTH,
		XPAR_VIDEO_PATH_FRAMEBUFFER_OLD_AXI_VDMA_OLD_MM2S_GENLOCK_MODE,
		XPAR_VIDEO_PATH_FRAMEBUFFER_OLD_AXI_VDMA_OLD_S2MM_GENLOCK_MODE,
		XPAR_VIDEO_PATH_FRAMEBUFFER_OLD_AXI_VDMA_OLD_INCLUDE_INTERNAL_GENLOCK,
		XPAR_VIDEO_PATH_FRAMEBUFFER_OLD_AXI_VDMA_OLD_S2MM_SOF_ENABLE,
		XPAR_VIDEO_PATH_FRAMEBUFFER_OLD_AXI_VDMA_OLD_M_AXIS_MM2S_TDATA_WIDTH,
		XPAR_VIDEO_PATH_FRAMEBUFFER_OLD_AXI_VDMA_OLD_S_AXIS_S2MM_TDATA_WIDTH,
		XPAR_VIDEO_PATH_FRAMEBUFFER_OLD_AXI_VDMA_OLD_ENABLE_DEBUG_INFO_1,
		XPAR_VIDEO_PATH_FRAMEBUFFER_OLD_AXI_VDMA_OLD_ENABLE_DEBUG_INFO_5,
		XPAR_VIDEO_PATH_FRAMEBUFFER_OLD_AXI_VDMA_OLD_ENABLE_DEBUG_INFO_6,
		XPAR_VIDEO_PATH_FRAMEBUFFER_OLD_AXI_VDMA_OLD_ENABLE_DEBUG_INFO_7,
		XPAR_VIDEO_PATH_FRAMEBUFFER_OLD_AXI_VDMA_OLD_ENABLE_DEBUG_INFO_9,
		XPAR_VIDEO_PATH_FRAMEBUFFER_OLD_AXI_VDMA_OLD_ENABLE_DEBUG_INFO_13,
		XPAR_VIDEO_PATH_FRAMEBUFFER_OLD_AXI_VDMA_OLD_ENABLE_DEBUG_INFO_14,
		XPAR_VIDEO_PATH_FRAMEBUFFER_OLD_AXI_VDMA_OLD_ENABLE_DEBUG_INFO_15,
		XPAR_VIDEO_PATH_FRAMEBUFFER_OLD_AXI_VDMA_OLD_ENABLE_DEBUG_ALL,
		XPAR_VIDEO_PATH_FRAMEBUFFER_OLD_AXI_VDMA_OLD_ADDR_WIDTH
	}
};


