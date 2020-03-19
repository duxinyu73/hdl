
set dac_fifo_address_width 10

source $ad_hdl_dir/projects/scripts/adi_pd_intel.tcl
source $ad_hdl_dir/projects/common/a10gx/a10gx_system_qsys.tcl
source $ad_hdl_dir/projects/common/intel/dacfifo_qsys.tcl
source ../common/daq2_qsys.tcl

set_interconnect_requirement {mm_interconnect_0|rsp_demux_021.src0/sys_ddr3_cntrl_ctrl_amm_0_to_sys_cpu_data_master_rsp_width_adapter.sink} {qsys_mm.postTransform.pipelineCount} {1}
set_interconnect_requirement {mm_interconnect_0|rsp_demux_021.src1/sys_ddr3_cntrl_ctrl_amm_0_to_sys_cpu_instruction_master_rsp_width_adapter.sink} {qsys_mm.postTransform.pipelineCount} {1}
set_interconnect_requirement {mm_interconnect_0|rsp_demux_021.src2/sys_ddr3_cntrl_ctrl_amm_0_to_axi_ad9680_dma_m_dest_axi_wr_rsp_width_adapter.sink} {qsys_mm.postTransform.pipelineCount} {1}
set_interconnect_requirement {mm_interconnect_0|rsp_demux_021.src3/sys_ddr3_cntrl_ctrl_amm_0_to_axi_ad9680_dma_m_dest_axi_rd_rsp_width_adapter.sink} {qsys_mm.postTransform.pipelineCount} {1}
set_interconnect_requirement {mm_interconnect_0|rsp_demux_021.src4/sys_ddr3_cntrl_ctrl_amm_0_to_axi_ad9144_dma_m_src_axi_wr_rsp_width_adapter.sink} {qsys_mm.postTransform.pipelineCount} {1}
set_interconnect_requirement {mm_interconnect_0|rsp_demux_021.src5/sys_ddr3_cntrl_ctrl_amm_0_to_axi_ad9144_dma_m_src_axi_rd_rsp_width_adapter.sink} {qsys_mm.postTransform.pipelineCount} {1}
set_interconnect_requirement {mm_interconnect_0|rsp_demux_021.src6/sys_ddr3_cntrl_ctrl_amm_0_to_sys_ethernet_dma_tx_mm_read_rsp_width_adapter.sink} {qsys_mm.postTransform.pipelineCount} {1}
set_interconnect_requirement {mm_interconnect_0|rsp_demux_021.src7/sys_ddr3_cntrl_ctrl_amm_0_to_sys_ethernet_dma_rx_mm_write_rsp_width_adapter.sink} {qsys_mm.postTransform.pipelineCount} {1}
set_interconnect_requirement {mm_interconnect_0|sys_ddr3_cntrl_ctrl_amm_0_to_sys_ethernet_dma_rx_mm_write_rsp_width_adapter.src/async_fifo_011.in} {qsys_mm.postTransform.pipelineCount} {1}
set_interconnect_requirement {mm_interconnect_0|sys_ddr3_cntrl_ctrl_amm_0_to_sys_cpu_instruction_master_rsp_width_adapter.src/crosser_003.in} {qsys_mm.postTransform.pipelineCount} {1}
set_interconnect_requirement {mm_interconnect_0|sys_ddr3_cntrl_ctrl_amm_0_to_axi_ad9680_dma_m_dest_axi_wr_rsp_width_adapter.src/async_fifo_006.in} {qsys_mm.postTransform.pipelineCount} {1}
set_interconnect_requirement {mm_interconnect_0|sys_ddr3_cntrl_ctrl_amm_0_to_axi_ad9680_dma_m_dest_axi_rd_rsp_width_adapter.src/async_fifo_007.in} {qsys_mm.postTransform.pipelineCount} {1}
set_interconnect_requirement {mm_interconnect_0|sys_ddr3_cntrl_ctrl_amm_0_to_axi_ad9144_dma_m_src_axi_wr_rsp_width_adapter.src/async_fifo_008.in} {qsys_mm.postTransform.pipelineCount} {1}
set_interconnect_requirement {mm_interconnect_0|sys_ddr3_cntrl_ctrl_amm_0_to_axi_ad9144_dma_m_src_axi_rd_rsp_width_adapter.src/async_fifo_009.in} {qsys_mm.postTransform.pipelineCount} {1}
set_interconnect_requirement {mm_interconnect_0|sys_ddr3_cntrl_ctrl_amm_0_to_sys_ethernet_dma_tx_mm_read_rsp_width_adapter.src/async_fifo_010.in} {qsys_mm.postTransform.pipelineCount} {1}

#system ID
set_instance_parameter_value axi_sysid_0 {ROM_ADDR_BITS} {9}
set_instance_parameter_value rom_sys_0 {ROM_ADDR_BITS} {9}

set_instance_parameter_value rom_sys_0 {PATH_TO_FILE} "[pwd]/mem_init_sys.txt"

set sys_cstring "sys rom custom string placeholder";
sysid_gen_sys_init_file $sys_cstring;

