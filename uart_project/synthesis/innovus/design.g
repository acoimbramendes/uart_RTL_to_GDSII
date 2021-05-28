######################################################################

# Created by Genus(TM) Synthesis Solution 17.20-p003_1 on Tue Sep 29 21:38:28 -03 2020

# This file contains the RC script for design:uart

######################################################################

set_db -quiet information_level 9
set_db -quiet design_mode_process 230.0
set_db -quiet phys_assume_met_fill 0.0
set_db -quiet map_placed_for_hum false
set_db -quiet phys_use_invs_extraction true
set_db -quiet phys_route_time_out 120.0
set_db -quiet capacitance_per_unit_length_mmmc {}
set_db -quiet resistance_per_unit_length_mmmc {}
set_db -quiet runtime_by_stage { {to_generic 0 46 0 9}  {first_condense 1 47 0 10}  {reify 1 48 1 12}  {global_incr_map 0 48 0 12} }
set_db -quiet tinfo_tstamp_file .rs_aln2.tstamp
set_db -quiet metric_enable true
set_db -quiet script_search_path ./
set_db -quiet use_area_from_lef true
set_db -quiet hdl_unconnected_marking_done true
set_db -quiet flow_metrics_snapshot_uuid 8e582610-3c88-4d27-ba69-fba602073aae
set_db -quiet compensative_dpul_driver 0
set_db -quiet phys_use_segment_parasitics true
set_db -quiet probabilistic_extraction true
set_db -quiet ple_correlation_factors {1.9000 2.0000}
set_db -quiet maximum_interval_of_vias inf
set_db -quiet ple_mode global
set_db -quiet wireload_selection wireload_selection:default_emulate_libset_max/tcb018gbwp7ttc/WireAreaForZero
set_db -quiet operating_condition:default_emulate_libset_max/tcb018gbwp7ttc/NCCOM .tree_type balanced_tree
set_db -quiet operating_condition:default_emulate_libset_max/tcb018gbwp7ttc/_nominal_ .tree_type balanced_tree
# BEGIN MSV SECTION
# END MSV SECTION
define_clock -name clk -domain domain_1 -period 6781684.0 -divide_period 25 -rise 0 -divide_rise 1 -fall 1 -divide_fall 2 -design design:uart port:uart/clk16x
define_cost_group -design design:uart -name clk
external_delay -accumulate -input {0.0 no_value no_value no_value} -clock clock:uart/clk -name create_clock_delay_domain_1_clk_R_0 port:uart/clk16x
set_db -quiet external_delay:uart/create_clock_delay_domain_1_clk_R_0 .clock_network_latency_included true
external_delay -accumulate -input {no_value 0.0 no_value no_value} -clock clock:uart/clk -edge_fall -name create_clock_delay_domain_1_clk_F_0 port:uart/clk16x
set_db -quiet external_delay:uart/create_clock_delay_domain_1_clk_F_0 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:uart/clk -name design.sdc_line_18 port:uart/clk16x
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:uart/clk -name design.sdc_line_18_1_1 port:uart/clrn
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:uart/clk -name design.sdc_line_18_2_1 port:uart/rdn
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:uart/clk -name design.sdc_line_18_3_1 port:uart/rxd
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:uart/clk -name design.sdc_line_18_4_1 port:uart/wrn
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:uart/clk -name design.sdc_line_18_5_1 {{port:uart/d_in[7]}}
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:uart/clk -name design.sdc_line_18_6_1 {{port:uart/d_in[6]}}
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:uart/clk -name design.sdc_line_18_7_1 {{port:uart/d_in[5]}}
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:uart/clk -name design.sdc_line_18_8_1 {{port:uart/d_in[4]}}
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:uart/clk -name design.sdc_line_18_9_1 {{port:uart/d_in[3]}}
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:uart/clk -name design.sdc_line_18_10_1 {{port:uart/d_in[2]}}
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:uart/clk -name design.sdc_line_18_11_1 {{port:uart/d_in[1]}}
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:uart/clk -name design.sdc_line_18_12_1 {{port:uart/d_in[0]}}
path_group -paths [specify_paths -to clock:uart/clk]  -name clk -group cost_group:uart/clk -user_priority -1047552
path_disable -paths [specify_paths -lenient -from port:uart/clrn]  -name design.sdc_line_15 -user_priority -901120
set_db -quiet exception:uart/design.sdc_line_15 .sdc_filename_linenumber {{../constraint/design.sdc 15}}
# BEGIN DFT SECTION
set_db -quiet dft_scan_style muxed_scan
set_db -quiet dft_scanbit_waveform_analysis false
# END DFT SECTION
set_db -quiet design:uart .qos_by_stage {{to_generic {wns -11111111} {tns -111111111} {vep -111111111} {area 6522} {cell_count 241} {utilization  0.00} {runtime 0 46 0 9} }{first_condense {wns -11111111} {tns -111111111} {vep -111111111} {area 7070} {cell_count 311} {utilization  0.00} {runtime 1 47 0 10} }{reify {wns 269514} {tns 0} {vep 0} {area 5323} {cell_count 172} {utilization  0.00} {runtime 1 48 1 12} }{global_incr_map {wns 269506} {tns 0} {vep 0} {area 5277} {cell_count 168} {utilization  0.00} {runtime 0 48 0 12} }}
set_db -quiet design:uart .seq_mbci_coverage 0.0
set_db -quiet design:uart .hdl_user_name uart
set_db -quiet design:uart .hdl_filelist {{default -sv {SYNTHESIS} {../uart.v} {../} {}}}
set_db -quiet design:uart .verification_directory fv/uart
set_db -quiet design:uart .seq_reason_deleted {{{recver/r_buffer_reg[0]99} {{constant 0}}} {{recver/r_buffer_reg[1]100} {{constant 0}}} {{recver/r_buffer_reg[2]101} {{constant 0}}} {{recver/r_buffer_reg[3]102} {{constant 0}}} {{recver/r_buffer_reg[4]103} {{constant 0}}} {{recver/r_buffer_reg[5]104} {{constant 0}}} {{recver/r_buffer_reg[6]105} {{constant 0}}} {{recver/r_buffer_reg[7]106} {{constant 0}}} {{recver/r_buffer_reg[8]107} {{constant 0}}} {{recver/r_buffer_reg[9]108} {{constant 0}}} {{recver/r_buffer_reg[10]109} {{constant 0}}}}
set_db -quiet design:uart .arch_filename ../uart.v
set_db -quiet design:uart .entity_filename ../uart.v
set_db -quiet port:uart/clk16x .input_slew_max_rise 160.0
set_db -quiet port:uart/clk16x .input_slew_max_fall 160.0
set_db -quiet port:uart/clk16x .input_slew_min_rise 3.0
set_db -quiet port:uart/clk16x .input_slew_min_fall 3.0
set_db -quiet port:uart/clk16x .min_transition no_value
set_db -quiet port:uart/clk16x .original_name clk16x
set_db -quiet port:uart/clrn .input_slew_max_rise 160.0
set_db -quiet port:uart/clrn .input_slew_max_fall 160.0
set_db -quiet port:uart/clrn .input_slew_min_rise 3.0
set_db -quiet port:uart/clrn .input_slew_min_fall 3.0
set_db -quiet port:uart/clrn .min_transition no_value
set_db -quiet port:uart/clrn .original_name clrn
set_db -quiet port:uart/rdn .input_slew_max_rise 160.0
set_db -quiet port:uart/rdn .input_slew_max_fall 160.0
set_db -quiet port:uart/rdn .input_slew_min_rise 3.0
set_db -quiet port:uart/rdn .input_slew_min_fall 3.0
set_db -quiet port:uart/rdn .min_transition no_value
set_db -quiet port:uart/rdn .original_name rdn
set_db -quiet port:uart/rxd .input_slew_max_rise 160.0
set_db -quiet port:uart/rxd .input_slew_max_fall 160.0
set_db -quiet port:uart/rxd .input_slew_min_rise 3.0
set_db -quiet port:uart/rxd .input_slew_min_fall 3.0
set_db -quiet port:uart/rxd .min_transition no_value
set_db -quiet port:uart/rxd .original_name rxd
set_db -quiet port:uart/wrn .input_slew_max_rise 160.0
set_db -quiet port:uart/wrn .input_slew_max_fall 160.0
set_db -quiet port:uart/wrn .input_slew_min_rise 3.0
set_db -quiet port:uart/wrn .input_slew_min_fall 3.0
set_db -quiet port:uart/wrn .min_transition no_value
set_db -quiet port:uart/wrn .original_name wrn
set_db -quiet {port:uart/d_in[7]} .input_slew_max_rise 160.0
set_db -quiet {port:uart/d_in[7]} .input_slew_max_fall 160.0
set_db -quiet {port:uart/d_in[7]} .input_slew_min_rise 3.0
set_db -quiet {port:uart/d_in[7]} .input_slew_min_fall 3.0
set_db -quiet {port:uart/d_in[7]} .min_transition no_value
set_db -quiet {port:uart/d_in[7]} .original_name {d_in[7]}
set_db -quiet {port:uart/d_in[6]} .input_slew_max_rise 160.0
set_db -quiet {port:uart/d_in[6]} .input_slew_max_fall 160.0
set_db -quiet {port:uart/d_in[6]} .input_slew_min_rise 3.0
set_db -quiet {port:uart/d_in[6]} .input_slew_min_fall 3.0
set_db -quiet {port:uart/d_in[6]} .min_transition no_value
set_db -quiet {port:uart/d_in[6]} .original_name {d_in[6]}
set_db -quiet {port:uart/d_in[5]} .input_slew_max_rise 160.0
set_db -quiet {port:uart/d_in[5]} .input_slew_max_fall 160.0
set_db -quiet {port:uart/d_in[5]} .input_slew_min_rise 3.0
set_db -quiet {port:uart/d_in[5]} .input_slew_min_fall 3.0
set_db -quiet {port:uart/d_in[5]} .min_transition no_value
set_db -quiet {port:uart/d_in[5]} .original_name {d_in[5]}
set_db -quiet {port:uart/d_in[4]} .input_slew_max_rise 160.0
set_db -quiet {port:uart/d_in[4]} .input_slew_max_fall 160.0
set_db -quiet {port:uart/d_in[4]} .input_slew_min_rise 3.0
set_db -quiet {port:uart/d_in[4]} .input_slew_min_fall 3.0
set_db -quiet {port:uart/d_in[4]} .min_transition no_value
set_db -quiet {port:uart/d_in[4]} .original_name {d_in[4]}
set_db -quiet {port:uart/d_in[3]} .input_slew_max_rise 160.0
set_db -quiet {port:uart/d_in[3]} .input_slew_max_fall 160.0
set_db -quiet {port:uart/d_in[3]} .input_slew_min_rise 3.0
set_db -quiet {port:uart/d_in[3]} .input_slew_min_fall 3.0
set_db -quiet {port:uart/d_in[3]} .min_transition no_value
set_db -quiet {port:uart/d_in[3]} .original_name {d_in[3]}
set_db -quiet {port:uart/d_in[2]} .input_slew_max_rise 160.0
set_db -quiet {port:uart/d_in[2]} .input_slew_max_fall 160.0
set_db -quiet {port:uart/d_in[2]} .input_slew_min_rise 3.0
set_db -quiet {port:uart/d_in[2]} .input_slew_min_fall 3.0
set_db -quiet {port:uart/d_in[2]} .min_transition no_value
set_db -quiet {port:uart/d_in[2]} .original_name {d_in[2]}
set_db -quiet {port:uart/d_in[1]} .input_slew_max_rise 160.0
set_db -quiet {port:uart/d_in[1]} .input_slew_max_fall 160.0
set_db -quiet {port:uart/d_in[1]} .input_slew_min_rise 3.0
set_db -quiet {port:uart/d_in[1]} .input_slew_min_fall 3.0
set_db -quiet {port:uart/d_in[1]} .min_transition no_value
set_db -quiet {port:uart/d_in[1]} .original_name {d_in[1]}
set_db -quiet {port:uart/d_in[0]} .input_slew_max_rise 160.0
set_db -quiet {port:uart/d_in[0]} .input_slew_max_fall 160.0
set_db -quiet {port:uart/d_in[0]} .input_slew_min_rise 3.0
set_db -quiet {port:uart/d_in[0]} .input_slew_min_fall 3.0
set_db -quiet {port:uart/d_in[0]} .min_transition no_value
set_db -quiet {port:uart/d_in[0]} .original_name {d_in[0]}
set_db -quiet {port:uart/d_out[7]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/d_out[7]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/d_out[7]} .external_capacitance_min 1.4
set_db -quiet {port:uart/d_out[7]} .min_transition no_value
set_db -quiet {port:uart/d_out[7]} .original_name {d_out[7]}
set_db -quiet {port:uart/d_out[7]} .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/d_out[6]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/d_out[6]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/d_out[6]} .external_capacitance_min 1.4
set_db -quiet {port:uart/d_out[6]} .min_transition no_value
set_db -quiet {port:uart/d_out[6]} .original_name {d_out[6]}
set_db -quiet {port:uart/d_out[6]} .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/d_out[5]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/d_out[5]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/d_out[5]} .external_capacitance_min 1.4
set_db -quiet {port:uart/d_out[5]} .min_transition no_value
set_db -quiet {port:uart/d_out[5]} .original_name {d_out[5]}
set_db -quiet {port:uart/d_out[5]} .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/d_out[4]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/d_out[4]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/d_out[4]} .external_capacitance_min 1.4
set_db -quiet {port:uart/d_out[4]} .min_transition no_value
set_db -quiet {port:uart/d_out[4]} .original_name {d_out[4]}
set_db -quiet {port:uart/d_out[4]} .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/d_out[3]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/d_out[3]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/d_out[3]} .external_capacitance_min 1.4
set_db -quiet {port:uart/d_out[3]} .min_transition no_value
set_db -quiet {port:uart/d_out[3]} .original_name {d_out[3]}
set_db -quiet {port:uart/d_out[3]} .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/d_out[2]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/d_out[2]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/d_out[2]} .external_capacitance_min 1.4
set_db -quiet {port:uart/d_out[2]} .min_transition no_value
set_db -quiet {port:uart/d_out[2]} .original_name {d_out[2]}
set_db -quiet {port:uart/d_out[2]} .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/d_out[1]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/d_out[1]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/d_out[1]} .external_capacitance_min 1.4
set_db -quiet {port:uart/d_out[1]} .min_transition no_value
set_db -quiet {port:uart/d_out[1]} .original_name {d_out[1]}
set_db -quiet {port:uart/d_out[1]} .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/d_out[0]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/d_out[0]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/d_out[0]} .external_capacitance_min 1.4
set_db -quiet {port:uart/d_out[0]} .min_transition no_value
set_db -quiet {port:uart/d_out[0]} .original_name {d_out[0]}
set_db -quiet {port:uart/d_out[0]} .external_pin_cap {320.0 320.0}
set_db -quiet port:uart/r_ready .external_pin_cap_min 1.4
set_db -quiet port:uart/r_ready .external_capacitance_max {320.0 320.0}
set_db -quiet port:uart/r_ready .external_capacitance_min 1.4
set_db -quiet port:uart/r_ready .min_transition no_value
set_db -quiet port:uart/r_ready .original_name r_ready
set_db -quiet port:uart/r_ready .external_pin_cap {320.0 320.0}
set_db -quiet port:uart/parity_error .external_pin_cap_min 1.4
set_db -quiet port:uart/parity_error .external_capacitance_max {320.0 320.0}
set_db -quiet port:uart/parity_error .external_capacitance_min 1.4
set_db -quiet port:uart/parity_error .min_transition no_value
set_db -quiet port:uart/parity_error .original_name parity_error
set_db -quiet port:uart/parity_error .external_pin_cap {320.0 320.0}
set_db -quiet port:uart/frame_error .external_pin_cap_min 1.4
set_db -quiet port:uart/frame_error .external_capacitance_max {320.0 320.0}
set_db -quiet port:uart/frame_error .external_capacitance_min 1.4
set_db -quiet port:uart/frame_error .min_transition no_value
set_db -quiet port:uart/frame_error .original_name frame_error
set_db -quiet port:uart/frame_error .external_pin_cap {320.0 320.0}
set_db -quiet port:uart/t_empty .external_pin_cap_min 1.4
set_db -quiet port:uart/t_empty .external_capacitance_max {320.0 320.0}
set_db -quiet port:uart/t_empty .external_capacitance_min 1.4
set_db -quiet port:uart/t_empty .min_transition no_value
set_db -quiet port:uart/t_empty .original_name t_empty
set_db -quiet port:uart/t_empty .external_pin_cap {320.0 320.0}
set_db -quiet port:uart/txd .external_pin_cap_min 1.4
set_db -quiet port:uart/txd .external_capacitance_max {320.0 320.0}
set_db -quiet port:uart/txd .external_capacitance_min 1.4
set_db -quiet port:uart/txd .min_transition no_value
set_db -quiet port:uart/txd .original_name txd
set_db -quiet port:uart/txd .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/cnt16x[3]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/cnt16x[3]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/cnt16x[3]} .external_capacitance_min 1.4
set_db -quiet {port:uart/cnt16x[3]} .min_transition no_value
set_db -quiet {port:uart/cnt16x[3]} .original_name {cnt16x[3]}
set_db -quiet {port:uart/cnt16x[3]} .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/cnt16x[2]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/cnt16x[2]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/cnt16x[2]} .external_capacitance_min 1.4
set_db -quiet {port:uart/cnt16x[2]} .min_transition no_value
set_db -quiet {port:uart/cnt16x[2]} .original_name {cnt16x[2]}
set_db -quiet {port:uart/cnt16x[2]} .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/cnt16x[1]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/cnt16x[1]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/cnt16x[1]} .external_capacitance_min 1.4
set_db -quiet {port:uart/cnt16x[1]} .min_transition no_value
set_db -quiet {port:uart/cnt16x[1]} .original_name {cnt16x[1]}
set_db -quiet {port:uart/cnt16x[1]} .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/cnt16x[0]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/cnt16x[0]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/cnt16x[0]} .external_capacitance_min 1.4
set_db -quiet {port:uart/cnt16x[0]} .min_transition no_value
set_db -quiet {port:uart/cnt16x[0]} .original_name {cnt16x[0]}
set_db -quiet {port:uart/cnt16x[0]} .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/no_bits_rcvd[3]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/no_bits_rcvd[3]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/no_bits_rcvd[3]} .external_capacitance_min 1.4
set_db -quiet {port:uart/no_bits_rcvd[3]} .min_transition no_value
set_db -quiet {port:uart/no_bits_rcvd[3]} .original_name {no_bits_rcvd[3]}
set_db -quiet {port:uart/no_bits_rcvd[3]} .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/no_bits_rcvd[2]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/no_bits_rcvd[2]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/no_bits_rcvd[2]} .external_capacitance_min 1.4
set_db -quiet {port:uart/no_bits_rcvd[2]} .min_transition no_value
set_db -quiet {port:uart/no_bits_rcvd[2]} .original_name {no_bits_rcvd[2]}
set_db -quiet {port:uart/no_bits_rcvd[2]} .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/no_bits_rcvd[1]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/no_bits_rcvd[1]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/no_bits_rcvd[1]} .external_capacitance_min 1.4
set_db -quiet {port:uart/no_bits_rcvd[1]} .min_transition no_value
set_db -quiet {port:uart/no_bits_rcvd[1]} .original_name {no_bits_rcvd[1]}
set_db -quiet {port:uart/no_bits_rcvd[1]} .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/no_bits_rcvd[0]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/no_bits_rcvd[0]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/no_bits_rcvd[0]} .external_capacitance_min 1.4
set_db -quiet {port:uart/no_bits_rcvd[0]} .min_transition no_value
set_db -quiet {port:uart/no_bits_rcvd[0]} .original_name {no_bits_rcvd[0]}
set_db -quiet {port:uart/no_bits_rcvd[0]} .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/r_buffer[10]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/r_buffer[10]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/r_buffer[10]} .external_capacitance_min 1.4
set_db -quiet {port:uart/r_buffer[10]} .min_transition no_value
set_db -quiet {port:uart/r_buffer[10]} .original_name {r_buffer[10]}
set_db -quiet {port:uart/r_buffer[10]} .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/r_buffer[9]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/r_buffer[9]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/r_buffer[9]} .external_capacitance_min 1.4
set_db -quiet {port:uart/r_buffer[9]} .min_transition no_value
set_db -quiet {port:uart/r_buffer[9]} .original_name {r_buffer[9]}
set_db -quiet {port:uart/r_buffer[9]} .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/r_buffer[8]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/r_buffer[8]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/r_buffer[8]} .external_capacitance_min 1.4
set_db -quiet {port:uart/r_buffer[8]} .min_transition no_value
set_db -quiet {port:uart/r_buffer[8]} .original_name {r_buffer[8]}
set_db -quiet {port:uart/r_buffer[8]} .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/r_buffer[7]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/r_buffer[7]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/r_buffer[7]} .external_capacitance_min 1.4
set_db -quiet {port:uart/r_buffer[7]} .min_transition no_value
set_db -quiet {port:uart/r_buffer[7]} .original_name {r_buffer[7]}
set_db -quiet {port:uart/r_buffer[7]} .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/r_buffer[6]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/r_buffer[6]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/r_buffer[6]} .external_capacitance_min 1.4
set_db -quiet {port:uart/r_buffer[6]} .min_transition no_value
set_db -quiet {port:uart/r_buffer[6]} .original_name {r_buffer[6]}
set_db -quiet {port:uart/r_buffer[6]} .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/r_buffer[5]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/r_buffer[5]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/r_buffer[5]} .external_capacitance_min 1.4
set_db -quiet {port:uart/r_buffer[5]} .min_transition no_value
set_db -quiet {port:uart/r_buffer[5]} .original_name {r_buffer[5]}
set_db -quiet {port:uart/r_buffer[5]} .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/r_buffer[4]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/r_buffer[4]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/r_buffer[4]} .external_capacitance_min 1.4
set_db -quiet {port:uart/r_buffer[4]} .min_transition no_value
set_db -quiet {port:uart/r_buffer[4]} .original_name {r_buffer[4]}
set_db -quiet {port:uart/r_buffer[4]} .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/r_buffer[3]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/r_buffer[3]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/r_buffer[3]} .external_capacitance_min 1.4
set_db -quiet {port:uart/r_buffer[3]} .min_transition no_value
set_db -quiet {port:uart/r_buffer[3]} .original_name {r_buffer[3]}
set_db -quiet {port:uart/r_buffer[3]} .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/r_buffer[2]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/r_buffer[2]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/r_buffer[2]} .external_capacitance_min 1.4
set_db -quiet {port:uart/r_buffer[2]} .min_transition no_value
set_db -quiet {port:uart/r_buffer[2]} .original_name {r_buffer[2]}
set_db -quiet {port:uart/r_buffer[2]} .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/r_buffer[1]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/r_buffer[1]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/r_buffer[1]} .external_capacitance_min 1.4
set_db -quiet {port:uart/r_buffer[1]} .min_transition no_value
set_db -quiet {port:uart/r_buffer[1]} .original_name {r_buffer[1]}
set_db -quiet {port:uart/r_buffer[1]} .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/r_buffer[0]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/r_buffer[0]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/r_buffer[0]} .external_capacitance_min 1.4
set_db -quiet {port:uart/r_buffer[0]} .min_transition no_value
set_db -quiet {port:uart/r_buffer[0]} .original_name {r_buffer[0]}
set_db -quiet {port:uart/r_buffer[0]} .external_pin_cap {320.0 320.0}
set_db -quiet port:uart/r_clk1x .external_pin_cap_min 1.4
set_db -quiet port:uart/r_clk1x .external_capacitance_max {320.0 320.0}
set_db -quiet port:uart/r_clk1x .external_capacitance_min 1.4
set_db -quiet port:uart/r_clk1x .min_transition no_value
set_db -quiet port:uart/r_clk1x .original_name r_clk1x
set_db -quiet port:uart/r_clk1x .external_pin_cap {320.0 320.0}
set_db -quiet port:uart/sampling .external_pin_cap_min 1.4
set_db -quiet port:uart/sampling .external_capacitance_max {320.0 320.0}
set_db -quiet port:uart/sampling .external_capacitance_min 1.4
set_db -quiet port:uart/sampling .min_transition no_value
set_db -quiet port:uart/sampling .original_name sampling
set_db -quiet port:uart/sampling .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/r_data[7]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/r_data[7]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/r_data[7]} .external_capacitance_min 1.4
set_db -quiet {port:uart/r_data[7]} .min_transition no_value
set_db -quiet {port:uart/r_data[7]} .original_name {r_data[7]}
set_db -quiet {port:uart/r_data[7]} .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/r_data[6]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/r_data[6]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/r_data[6]} .external_capacitance_min 1.4
set_db -quiet {port:uart/r_data[6]} .min_transition no_value
set_db -quiet {port:uart/r_data[6]} .original_name {r_data[6]}
set_db -quiet {port:uart/r_data[6]} .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/r_data[5]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/r_data[5]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/r_data[5]} .external_capacitance_min 1.4
set_db -quiet {port:uart/r_data[5]} .min_transition no_value
set_db -quiet {port:uart/r_data[5]} .original_name {r_data[5]}
set_db -quiet {port:uart/r_data[5]} .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/r_data[4]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/r_data[4]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/r_data[4]} .external_capacitance_min 1.4
set_db -quiet {port:uart/r_data[4]} .min_transition no_value
set_db -quiet {port:uart/r_data[4]} .original_name {r_data[4]}
set_db -quiet {port:uart/r_data[4]} .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/r_data[3]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/r_data[3]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/r_data[3]} .external_capacitance_min 1.4
set_db -quiet {port:uart/r_data[3]} .min_transition no_value
set_db -quiet {port:uart/r_data[3]} .original_name {r_data[3]}
set_db -quiet {port:uart/r_data[3]} .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/r_data[2]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/r_data[2]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/r_data[2]} .external_capacitance_min 1.4
set_db -quiet {port:uart/r_data[2]} .min_transition no_value
set_db -quiet {port:uart/r_data[2]} .original_name {r_data[2]}
set_db -quiet {port:uart/r_data[2]} .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/r_data[1]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/r_data[1]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/r_data[1]} .external_capacitance_min 1.4
set_db -quiet {port:uart/r_data[1]} .min_transition no_value
set_db -quiet {port:uart/r_data[1]} .original_name {r_data[1]}
set_db -quiet {port:uart/r_data[1]} .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/r_data[0]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/r_data[0]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/r_data[0]} .external_capacitance_min 1.4
set_db -quiet {port:uart/r_data[0]} .min_transition no_value
set_db -quiet {port:uart/r_data[0]} .original_name {r_data[0]}
set_db -quiet {port:uart/r_data[0]} .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/no_bits_sent[3]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/no_bits_sent[3]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/no_bits_sent[3]} .external_capacitance_min 1.4
set_db -quiet {port:uart/no_bits_sent[3]} .min_transition no_value
set_db -quiet {port:uart/no_bits_sent[3]} .original_name {no_bits_sent[3]}
set_db -quiet {port:uart/no_bits_sent[3]} .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/no_bits_sent[2]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/no_bits_sent[2]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/no_bits_sent[2]} .external_capacitance_min 1.4
set_db -quiet {port:uart/no_bits_sent[2]} .min_transition no_value
set_db -quiet {port:uart/no_bits_sent[2]} .original_name {no_bits_sent[2]}
set_db -quiet {port:uart/no_bits_sent[2]} .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/no_bits_sent[1]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/no_bits_sent[1]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/no_bits_sent[1]} .external_capacitance_min 1.4
set_db -quiet {port:uart/no_bits_sent[1]} .min_transition no_value
set_db -quiet {port:uart/no_bits_sent[1]} .original_name {no_bits_sent[1]}
set_db -quiet {port:uart/no_bits_sent[1]} .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/no_bits_sent[0]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/no_bits_sent[0]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/no_bits_sent[0]} .external_capacitance_min 1.4
set_db -quiet {port:uart/no_bits_sent[0]} .min_transition no_value
set_db -quiet {port:uart/no_bits_sent[0]} .original_name {no_bits_sent[0]}
set_db -quiet {port:uart/no_bits_sent[0]} .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/t_buffer[7]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/t_buffer[7]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/t_buffer[7]} .external_capacitance_min 1.4
set_db -quiet {port:uart/t_buffer[7]} .min_transition no_value
set_db -quiet {port:uart/t_buffer[7]} .original_name {t_buffer[7]}
set_db -quiet {port:uart/t_buffer[7]} .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/t_buffer[6]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/t_buffer[6]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/t_buffer[6]} .external_capacitance_min 1.4
set_db -quiet {port:uart/t_buffer[6]} .min_transition no_value
set_db -quiet {port:uart/t_buffer[6]} .original_name {t_buffer[6]}
set_db -quiet {port:uart/t_buffer[6]} .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/t_buffer[5]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/t_buffer[5]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/t_buffer[5]} .external_capacitance_min 1.4
set_db -quiet {port:uart/t_buffer[5]} .min_transition no_value
set_db -quiet {port:uart/t_buffer[5]} .original_name {t_buffer[5]}
set_db -quiet {port:uart/t_buffer[5]} .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/t_buffer[4]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/t_buffer[4]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/t_buffer[4]} .external_capacitance_min 1.4
set_db -quiet {port:uart/t_buffer[4]} .min_transition no_value
set_db -quiet {port:uart/t_buffer[4]} .original_name {t_buffer[4]}
set_db -quiet {port:uart/t_buffer[4]} .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/t_buffer[3]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/t_buffer[3]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/t_buffer[3]} .external_capacitance_min 1.4
set_db -quiet {port:uart/t_buffer[3]} .min_transition no_value
set_db -quiet {port:uart/t_buffer[3]} .original_name {t_buffer[3]}
set_db -quiet {port:uart/t_buffer[3]} .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/t_buffer[2]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/t_buffer[2]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/t_buffer[2]} .external_capacitance_min 1.4
set_db -quiet {port:uart/t_buffer[2]} .min_transition no_value
set_db -quiet {port:uart/t_buffer[2]} .original_name {t_buffer[2]}
set_db -quiet {port:uart/t_buffer[2]} .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/t_buffer[1]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/t_buffer[1]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/t_buffer[1]} .external_capacitance_min 1.4
set_db -quiet {port:uart/t_buffer[1]} .min_transition no_value
set_db -quiet {port:uart/t_buffer[1]} .original_name {t_buffer[1]}
set_db -quiet {port:uart/t_buffer[1]} .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/t_buffer[0]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/t_buffer[0]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/t_buffer[0]} .external_capacitance_min 1.4
set_db -quiet {port:uart/t_buffer[0]} .min_transition no_value
set_db -quiet {port:uart/t_buffer[0]} .original_name {t_buffer[0]}
set_db -quiet {port:uart/t_buffer[0]} .external_pin_cap {320.0 320.0}
set_db -quiet port:uart/t_clk1x .external_pin_cap_min 1.4
set_db -quiet port:uart/t_clk1x .external_capacitance_max {320.0 320.0}
set_db -quiet port:uart/t_clk1x .external_capacitance_min 1.4
set_db -quiet port:uart/t_clk1x .min_transition no_value
set_db -quiet port:uart/t_clk1x .original_name t_clk1x
set_db -quiet port:uart/t_clk1x .external_pin_cap {320.0 320.0}
set_db -quiet port:uart/sending .external_pin_cap_min 1.4
set_db -quiet port:uart/sending .external_capacitance_max {320.0 320.0}
set_db -quiet port:uart/sending .external_capacitance_min 1.4
set_db -quiet port:uart/sending .min_transition no_value
set_db -quiet port:uart/sending .original_name sending
set_db -quiet port:uart/sending .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/t_data[7]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/t_data[7]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/t_data[7]} .external_capacitance_min 1.4
set_db -quiet {port:uart/t_data[7]} .min_transition no_value
set_db -quiet {port:uart/t_data[7]} .original_name {t_data[7]}
set_db -quiet {port:uart/t_data[7]} .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/t_data[6]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/t_data[6]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/t_data[6]} .external_capacitance_min 1.4
set_db -quiet {port:uart/t_data[6]} .min_transition no_value
set_db -quiet {port:uart/t_data[6]} .original_name {t_data[6]}
set_db -quiet {port:uart/t_data[6]} .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/t_data[5]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/t_data[5]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/t_data[5]} .external_capacitance_min 1.4
set_db -quiet {port:uart/t_data[5]} .min_transition no_value
set_db -quiet {port:uart/t_data[5]} .original_name {t_data[5]}
set_db -quiet {port:uart/t_data[5]} .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/t_data[4]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/t_data[4]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/t_data[4]} .external_capacitance_min 1.4
set_db -quiet {port:uart/t_data[4]} .min_transition no_value
set_db -quiet {port:uart/t_data[4]} .original_name {t_data[4]}
set_db -quiet {port:uart/t_data[4]} .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/t_data[3]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/t_data[3]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/t_data[3]} .external_capacitance_min 1.4
set_db -quiet {port:uart/t_data[3]} .min_transition no_value
set_db -quiet {port:uart/t_data[3]} .original_name {t_data[3]}
set_db -quiet {port:uart/t_data[3]} .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/t_data[2]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/t_data[2]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/t_data[2]} .external_capacitance_min 1.4
set_db -quiet {port:uart/t_data[2]} .min_transition no_value
set_db -quiet {port:uart/t_data[2]} .original_name {t_data[2]}
set_db -quiet {port:uart/t_data[2]} .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/t_data[1]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/t_data[1]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/t_data[1]} .external_capacitance_min 1.4
set_db -quiet {port:uart/t_data[1]} .min_transition no_value
set_db -quiet {port:uart/t_data[1]} .original_name {t_data[1]}
set_db -quiet {port:uart/t_data[1]} .external_pin_cap {320.0 320.0}
set_db -quiet {port:uart/t_data[0]} .external_pin_cap_min 1.4
set_db -quiet {port:uart/t_data[0]} .external_capacitance_max {320.0 320.0}
set_db -quiet {port:uart/t_data[0]} .external_capacitance_min 1.4
set_db -quiet {port:uart/t_data[0]} .min_transition no_value
set_db -quiet {port:uart/t_data[0]} .original_name {t_data[0]}
set_db -quiet {port:uart/t_data[0]} .external_pin_cap {320.0 320.0}
set_db -quiet inst:uart/sender_txd_reg .original_name sender/txd
set_db -quiet inst:uart/sender_txd_reg .orig_hdl_instantiated false
set_db -quiet inst:uart/sender_txd_reg .single_bit_orig_name sender/txd
set_db -quiet inst:uart/sender_txd_reg .gint_phase_inversion false
set_db -quiet pin:uart/sender_txd_reg/Q .original_name sender/txd/q
set_db -quiet inst:uart/sender_wrn_buf_clean_reg .original_name sender/wrn_buf_clean
set_db -quiet inst:uart/sender_wrn_buf_clean_reg .orig_hdl_instantiated false
set_db -quiet inst:uart/sender_wrn_buf_clean_reg .single_bit_orig_name sender/wrn_buf_clean
set_db -quiet inst:uart/sender_wrn_buf_clean_reg .gint_phase_inversion false
set_db -quiet pin:uart/sender_wrn_buf_clean_reg/Q .original_name sender/wrn_buf_clean/q
set_db -quiet inst:uart/sender_clrn_buf_reg .original_name sender/clrn_buf
set_db -quiet inst:uart/sender_clrn_buf_reg .orig_hdl_instantiated false
set_db -quiet inst:uart/sender_clrn_buf_reg .single_bit_orig_name sender/clrn_buf
set_db -quiet inst:uart/sender_clrn_buf_reg .gint_phase_inversion false
set_db -quiet pin:uart/sender_clrn_buf_reg/Q .original_name sender/clrn_buf/q
set_db -quiet {inst:uart/cnt16x_reg[3]} .original_name {{cnt16x[3]}}
set_db -quiet {inst:uart/cnt16x_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:uart/cnt16x_reg[3]} .single_bit_orig_name {cnt16x[3]}
set_db -quiet {inst:uart/cnt16x_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:uart/cnt16x_reg[3]/Q} .original_name {cnt16x[3]/q}
set_db -quiet inst:uart/sender_sending_reg .original_name sender/sending
set_db -quiet inst:uart/sender_sending_reg .orig_hdl_instantiated false
set_db -quiet inst:uart/sender_sending_reg .single_bit_orig_name sender/sending
set_db -quiet inst:uart/sender_sending_reg .gint_phase_inversion false
set_db -quiet pin:uart/sender_sending_reg/Q .original_name sender/sending/q
set_db -quiet {inst:uart/sender_no_bits_sent_reg[3]} .original_name {{sender/no_bits_sent[3]}}
set_db -quiet {inst:uart/sender_no_bits_sent_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:uart/sender_no_bits_sent_reg[3]} .single_bit_orig_name {sender/no_bits_sent[3]}
set_db -quiet {inst:uart/sender_no_bits_sent_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:uart/sender_no_bits_sent_reg[3]/Q} .original_name {sender/no_bits_sent[3]/q}
set_db -quiet {inst:uart/cnt16x_reg[2]} .original_name {{cnt16x[2]}}
set_db -quiet {inst:uart/cnt16x_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:uart/cnt16x_reg[2]} .single_bit_orig_name {cnt16x[2]}
set_db -quiet {inst:uart/cnt16x_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:uart/cnt16x_reg[2]/Q} .original_name {cnt16x[2]/q}
set_db -quiet {inst:uart/sender_t_buffer_reg[1]} .original_name {{sender/t_buffer[1]}}
set_db -quiet {inst:uart/sender_t_buffer_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:uart/sender_t_buffer_reg[1]} .single_bit_orig_name {sender/t_buffer[1]}
set_db -quiet {inst:uart/sender_t_buffer_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:uart/sender_t_buffer_reg[1]/Q} .original_name {sender/t_buffer[1]/q}
set_db -quiet {inst:uart/sender_t_buffer_reg[0]} .original_name {{sender/t_buffer[0]}}
set_db -quiet {inst:uart/sender_t_buffer_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:uart/sender_t_buffer_reg[0]} .single_bit_orig_name {sender/t_buffer[0]}
set_db -quiet {inst:uart/sender_t_buffer_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:uart/sender_t_buffer_reg[0]/Q} .original_name {sender/t_buffer[0]/q}
set_db -quiet {inst:uart/sender_t_buffer_reg[3]} .original_name {{sender/t_buffer[3]}}
set_db -quiet {inst:uart/sender_t_buffer_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:uart/sender_t_buffer_reg[3]} .single_bit_orig_name {sender/t_buffer[3]}
set_db -quiet {inst:uart/sender_t_buffer_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:uart/sender_t_buffer_reg[3]/Q} .original_name {sender/t_buffer[3]/q}
set_db -quiet {inst:uart/sender_t_buffer_reg[2]} .original_name {{sender/t_buffer[2]}}
set_db -quiet {inst:uart/sender_t_buffer_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:uart/sender_t_buffer_reg[2]} .single_bit_orig_name {sender/t_buffer[2]}
set_db -quiet {inst:uart/sender_t_buffer_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:uart/sender_t_buffer_reg[2]/Q} .original_name {sender/t_buffer[2]/q}
set_db -quiet {inst:uart/sender_no_bits_sent_reg[2]} .original_name {{sender/no_bits_sent[2]}}
set_db -quiet {inst:uart/sender_no_bits_sent_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:uart/sender_no_bits_sent_reg[2]} .single_bit_orig_name {sender/no_bits_sent[2]}
set_db -quiet {inst:uart/sender_no_bits_sent_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:uart/sender_no_bits_sent_reg[2]/Q} .original_name {sender/no_bits_sent[2]/q}
set_db -quiet {inst:uart/sender_t_buffer_reg[6]} .original_name {{sender/t_buffer[6]}}
set_db -quiet {inst:uart/sender_t_buffer_reg[6]} .orig_hdl_instantiated false
set_db -quiet {inst:uart/sender_t_buffer_reg[6]} .single_bit_orig_name {sender/t_buffer[6]}
set_db -quiet {inst:uart/sender_t_buffer_reg[6]} .gint_phase_inversion false
set_db -quiet {pin:uart/sender_t_buffer_reg[6]/Q} .original_name {sender/t_buffer[6]/q}
set_db -quiet {inst:uart/sender_t_buffer_reg[7]} .original_name {{sender/t_buffer[7]}}
set_db -quiet {inst:uart/sender_t_buffer_reg[7]} .orig_hdl_instantiated false
set_db -quiet {inst:uart/sender_t_buffer_reg[7]} .single_bit_orig_name {sender/t_buffer[7]}
set_db -quiet {inst:uart/sender_t_buffer_reg[7]} .gint_phase_inversion false
set_db -quiet {pin:uart/sender_t_buffer_reg[7]/Q} .original_name {sender/t_buffer[7]/q}
set_db -quiet {inst:uart/sender_t_buffer_reg[4]} .original_name {{sender/t_buffer[4]}}
set_db -quiet {inst:uart/sender_t_buffer_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:uart/sender_t_buffer_reg[4]} .single_bit_orig_name {sender/t_buffer[4]}
set_db -quiet {inst:uart/sender_t_buffer_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:uart/sender_t_buffer_reg[4]/Q} .original_name {sender/t_buffer[4]/q}
set_db -quiet {inst:uart/sender_t_buffer_reg[5]} .original_name {{sender/t_buffer[5]}}
set_db -quiet {inst:uart/sender_t_buffer_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:uart/sender_t_buffer_reg[5]} .single_bit_orig_name {sender/t_buffer[5]}
set_db -quiet {inst:uart/sender_t_buffer_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:uart/sender_t_buffer_reg[5]/Q} .original_name {sender/t_buffer[5]/q}
set_db -quiet inst:uart/sender_t_empty_reg .original_name sender/t_empty
set_db -quiet inst:uart/sender_t_empty_reg .orig_hdl_instantiated false
set_db -quiet inst:uart/sender_t_empty_reg .single_bit_orig_name sender/t_empty
set_db -quiet inst:uart/sender_t_empty_reg .gint_phase_inversion false
set_db -quiet pin:uart/sender_t_empty_reg/Q .original_name sender/t_empty/q
set_db -quiet inst:uart/sender_load_t_buffer_reg .original_name sender/load_t_buffer
set_db -quiet inst:uart/sender_load_t_buffer_reg .orig_hdl_instantiated false
set_db -quiet inst:uart/sender_load_t_buffer_reg .single_bit_orig_name sender/load_t_buffer
set_db -quiet inst:uart/sender_load_t_buffer_reg .gint_phase_inversion false
set_db -quiet pin:uart/sender_load_t_buffer_reg/Q .original_name sender/load_t_buffer/q
set_db -quiet {inst:uart/sender_t_data_reg[0]} .original_name {{sender/t_data[0]}}
set_db -quiet {inst:uart/sender_t_data_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:uart/sender_t_data_reg[0]} .single_bit_orig_name {sender/t_data[0]}
set_db -quiet {inst:uart/sender_t_data_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:uart/sender_t_data_reg[0]/Q} .original_name {sender/t_data[0]/q}
set_db -quiet {inst:uart/cnt16x_reg[1]} .original_name {{cnt16x[1]}}
set_db -quiet {inst:uart/cnt16x_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:uart/cnt16x_reg[1]} .single_bit_orig_name {cnt16x[1]}
set_db -quiet {inst:uart/cnt16x_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:uart/cnt16x_reg[1]/Q} .original_name {cnt16x[1]/q}
set_db -quiet {inst:uart/sender_no_bits_sent_reg[1]} .original_name {{sender/no_bits_sent[1]}}
set_db -quiet {inst:uart/sender_no_bits_sent_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:uart/sender_no_bits_sent_reg[1]} .single_bit_orig_name {sender/no_bits_sent[1]}
set_db -quiet {inst:uart/sender_no_bits_sent_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:uart/sender_no_bits_sent_reg[1]/Q} .original_name {sender/no_bits_sent[1]/q}
set_db -quiet {inst:uart/sender_t_data_reg[1]} .original_name {{sender/t_data[1]}}
set_db -quiet {inst:uart/sender_t_data_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:uart/sender_t_data_reg[1]} .single_bit_orig_name {sender/t_data[1]}
set_db -quiet {inst:uart/sender_t_data_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:uart/sender_t_data_reg[1]/Q} .original_name {sender/t_data[1]/q}
set_db -quiet {inst:uart/sender_t_data_reg[2]} .original_name {{sender/t_data[2]}}
set_db -quiet {inst:uart/sender_t_data_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:uart/sender_t_data_reg[2]} .single_bit_orig_name {sender/t_data[2]}
set_db -quiet {inst:uart/sender_t_data_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:uart/sender_t_data_reg[2]/Q} .original_name {sender/t_data[2]/q}
set_db -quiet {inst:uart/sender_t_data_reg[4]} .original_name {{sender/t_data[4]}}
set_db -quiet {inst:uart/sender_t_data_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:uart/sender_t_data_reg[4]} .single_bit_orig_name {sender/t_data[4]}
set_db -quiet {inst:uart/sender_t_data_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:uart/sender_t_data_reg[4]/Q} .original_name {sender/t_data[4]/q}
set_db -quiet {inst:uart/sender_t_data_reg[5]} .original_name {{sender/t_data[5]}}
set_db -quiet {inst:uart/sender_t_data_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:uart/sender_t_data_reg[5]} .single_bit_orig_name {sender/t_data[5]}
set_db -quiet {inst:uart/sender_t_data_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:uart/sender_t_data_reg[5]/Q} .original_name {sender/t_data[5]/q}
set_db -quiet {inst:uart/sender_t_data_reg[6]} .original_name {{sender/t_data[6]}}
set_db -quiet {inst:uart/sender_t_data_reg[6]} .orig_hdl_instantiated false
set_db -quiet {inst:uart/sender_t_data_reg[6]} .single_bit_orig_name {sender/t_data[6]}
set_db -quiet {inst:uart/sender_t_data_reg[6]} .gint_phase_inversion false
set_db -quiet {pin:uart/sender_t_data_reg[6]/Q} .original_name {sender/t_data[6]/q}
set_db -quiet {inst:uart/sender_t_data_reg[7]} .original_name {{sender/t_data[7]}}
set_db -quiet {inst:uart/sender_t_data_reg[7]} .orig_hdl_instantiated false
set_db -quiet {inst:uart/sender_t_data_reg[7]} .single_bit_orig_name {sender/t_data[7]}
set_db -quiet {inst:uart/sender_t_data_reg[7]} .gint_phase_inversion false
set_db -quiet {pin:uart/sender_t_data_reg[7]/Q} .original_name {sender/t_data[7]/q}
set_db -quiet {inst:uart/sender_t_data_reg[3]} .original_name {{sender/t_data[3]}}
set_db -quiet {inst:uart/sender_t_data_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:uart/sender_t_data_reg[3]} .single_bit_orig_name {sender/t_data[3]}
set_db -quiet {inst:uart/sender_t_data_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:uart/sender_t_data_reg[3]/Q} .original_name {sender/t_data[3]/q}
set_db -quiet inst:uart/sender_wrn_buf_reg .original_name sender/wrn_buf
set_db -quiet inst:uart/sender_wrn_buf_reg .orig_hdl_instantiated false
set_db -quiet inst:uart/sender_wrn_buf_reg .single_bit_orig_name sender/wrn_buf
set_db -quiet inst:uart/sender_wrn_buf_reg .gint_phase_inversion false
set_db -quiet pin:uart/sender_wrn_buf_reg/Q .original_name sender/wrn_buf/q
set_db -quiet inst:uart/sender_clrn_buf_clean_reg .original_name sender/clrn_buf_clean
set_db -quiet inst:uart/sender_clrn_buf_clean_reg .orig_hdl_instantiated false
set_db -quiet inst:uart/sender_clrn_buf_clean_reg .single_bit_orig_name sender/clrn_buf_clean
set_db -quiet inst:uart/sender_clrn_buf_clean_reg .gint_phase_inversion false
set_db -quiet pin:uart/sender_clrn_buf_clean_reg/Q .original_name sender/clrn_buf_clean/q
set_db -quiet {inst:uart/cnt16x_reg[0]} .original_name {{cnt16x[0]}}
set_db -quiet {inst:uart/cnt16x_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:uart/cnt16x_reg[0]} .single_bit_orig_name {cnt16x[0]}
set_db -quiet {inst:uart/cnt16x_reg[0]} .gint_phase_inversion true
set_db -quiet {pin:uart/cnt16x_reg[0]/Q} .original_name {cnt16x[0]/q}
set_db -quiet {pin:uart/cnt16x_reg[0]/Q} .is_phase_inverted true
set_db -quiet {inst:uart/sender_no_bits_sent_reg[0]} .original_name {{sender/no_bits_sent[0]}}
set_db -quiet {inst:uart/sender_no_bits_sent_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:uart/sender_no_bits_sent_reg[0]} .single_bit_orig_name {sender/no_bits_sent[0]}
set_db -quiet {inst:uart/sender_no_bits_sent_reg[0]} .gint_phase_inversion true
set_db -quiet {pin:uart/sender_no_bits_sent_reg[0]/Q} .original_name {sender/no_bits_sent[0]/q}
set_db -quiet {pin:uart/sender_no_bits_sent_reg[0]/QN} .original_name {sender/no_bits_sent[0]/q}
set_db -quiet {pin:uart/sender_no_bits_sent_reg[0]/QN} .is_phase_inverted true
set_db -quiet inst:uart/recver_rxd_old_reg .original_name recver/rxd_old
set_db -quiet inst:uart/recver_rxd_old_reg .orig_hdl_instantiated false
set_db -quiet inst:uart/recver_rxd_old_reg .single_bit_orig_name recver/rxd_old
set_db -quiet inst:uart/recver_rxd_old_reg .gint_phase_inversion false
set_db -quiet pin:uart/recver_rxd_old_reg/Q .original_name recver/rxd_old/q
set_db -quiet inst:uart/recver_rxd_new_reg .original_name recver/rxd_new
set_db -quiet inst:uart/recver_rxd_new_reg .orig_hdl_instantiated false
set_db -quiet inst:uart/recver_rxd_new_reg .single_bit_orig_name recver/rxd_new
set_db -quiet inst:uart/recver_rxd_new_reg .gint_phase_inversion false
set_db -quiet pin:uart/recver_rxd_new_reg/Q .original_name recver/rxd_new/q
set_db -quiet inst:uart/recver_parity_error_reg .original_name recver/parity_error
set_db -quiet inst:uart/recver_parity_error_reg .orig_hdl_instantiated false
set_db -quiet inst:uart/recver_parity_error_reg .single_bit_orig_name recver/parity_error
set_db -quiet inst:uart/recver_parity_error_reg .gint_phase_inversion false
set_db -quiet pin:uart/recver_parity_error_reg/Q .original_name recver/parity_error/q
set_db -quiet inst:uart/recver_clk1x_reg .original_name recver/clk1x
set_db -quiet inst:uart/recver_clk1x_reg .orig_hdl_instantiated false
set_db -quiet inst:uart/recver_clk1x_reg .single_bit_orig_name recver/clk1x
set_db -quiet inst:uart/recver_clk1x_reg .gint_phase_inversion true
set_db -quiet pin:uart/recver_clk1x_reg/Q .original_name recver/clk1x/q
set_db -quiet pin:uart/recver_clk1x_reg/QN .original_name recver/clk1x/q
set_db -quiet pin:uart/recver_clk1x_reg/QN .is_phase_inverted true
set_db -quiet {inst:uart/recver_r_buffer_reg[10]} .original_name {{recver/r_buffer[10]}}
set_db -quiet {inst:uart/recver_r_buffer_reg[10]} .orig_hdl_instantiated false
set_db -quiet {inst:uart/recver_r_buffer_reg[10]} .single_bit_orig_name {recver/r_buffer[10]}
set_db -quiet {inst:uart/recver_r_buffer_reg[10]} .gint_phase_inversion false
set_db -quiet {pin:uart/recver_r_buffer_reg[10]/Q} .original_name {recver/r_buffer[10]/q}
set_db -quiet {pin:uart/recver_r_buffer_reg[10]/Q} .dont_touch false
set_db -quiet {inst:uart/recver_r_buffer_reg[8]} .original_name {{recver/r_buffer[8]}}
set_db -quiet {inst:uart/recver_r_buffer_reg[8]} .orig_hdl_instantiated false
set_db -quiet {inst:uart/recver_r_buffer_reg[8]} .single_bit_orig_name {recver/r_buffer[8]}
set_db -quiet {inst:uart/recver_r_buffer_reg[8]} .gint_phase_inversion false
set_db -quiet {pin:uart/recver_r_buffer_reg[8]/Q} .original_name {recver/r_buffer[8]/q}
set_db -quiet {pin:uart/recver_r_buffer_reg[8]/Q} .dont_touch false
set_db -quiet {inst:uart/recver_r_buffer_reg[5]} .original_name {{recver/r_buffer[5]}}
set_db -quiet {inst:uart/recver_r_buffer_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:uart/recver_r_buffer_reg[5]} .single_bit_orig_name {recver/r_buffer[5]}
set_db -quiet {inst:uart/recver_r_buffer_reg[5]} .gint_phase_inversion true
set_db -quiet {pin:uart/recver_r_buffer_reg[5]/Q} .original_name {recver/r_buffer[5]/q}
set_db -quiet {pin:uart/recver_r_buffer_reg[5]/Q} .dont_touch false
set_db -quiet {pin:uart/recver_r_buffer_reg[5]/QN} .original_name {recver/r_buffer[5]/q}
set_db -quiet {pin:uart/recver_r_buffer_reg[5]/QN} .is_phase_inverted true
set_db -quiet {pin:uart/recver_r_buffer_reg[5]/QN} .dont_touch false
set_db -quiet {inst:uart/recver_r_buffer_reg[4]} .original_name {{recver/r_buffer[4]}}
set_db -quiet {inst:uart/recver_r_buffer_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:uart/recver_r_buffer_reg[4]} .single_bit_orig_name {recver/r_buffer[4]}
set_db -quiet {inst:uart/recver_r_buffer_reg[4]} .gint_phase_inversion true
set_db -quiet {pin:uart/recver_r_buffer_reg[4]/Q} .original_name {recver/r_buffer[4]/q}
set_db -quiet {pin:uart/recver_r_buffer_reg[4]/Q} .dont_touch false
set_db -quiet {pin:uart/recver_r_buffer_reg[4]/QN} .original_name {recver/r_buffer[4]/q}
set_db -quiet {pin:uart/recver_r_buffer_reg[4]/QN} .is_phase_inverted true
set_db -quiet {pin:uart/recver_r_buffer_reg[4]/QN} .dont_touch false
set_db -quiet {inst:uart/recver_r_buffer_reg[9]} .original_name {{recver/r_buffer[9]}}
set_db -quiet {inst:uart/recver_r_buffer_reg[9]} .orig_hdl_instantiated false
set_db -quiet {inst:uart/recver_r_buffer_reg[9]} .single_bit_orig_name {recver/r_buffer[9]}
set_db -quiet {inst:uart/recver_r_buffer_reg[9]} .gint_phase_inversion false
set_db -quiet {pin:uart/recver_r_buffer_reg[9]/Q} .original_name {recver/r_buffer[9]/q}
set_db -quiet {pin:uart/recver_r_buffer_reg[9]/Q} .dont_touch false
set_db -quiet {inst:uart/recver_r_buffer_reg[2]} .original_name {{recver/r_buffer[2]}}
set_db -quiet {inst:uart/recver_r_buffer_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:uart/recver_r_buffer_reg[2]} .single_bit_orig_name {recver/r_buffer[2]}
set_db -quiet {inst:uart/recver_r_buffer_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:uart/recver_r_buffer_reg[2]/Q} .original_name {recver/r_buffer[2]/q}
set_db -quiet {pin:uart/recver_r_buffer_reg[2]/Q} .dont_touch false
set_db -quiet {inst:uart/recver_r_buffer_reg[1]} .original_name {{recver/r_buffer[1]}}
set_db -quiet {inst:uart/recver_r_buffer_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:uart/recver_r_buffer_reg[1]} .single_bit_orig_name {recver/r_buffer[1]}
set_db -quiet {inst:uart/recver_r_buffer_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:uart/recver_r_buffer_reg[1]/Q} .original_name {recver/r_buffer[1]/q}
set_db -quiet {pin:uart/recver_r_buffer_reg[1]/Q} .dont_touch false
set_db -quiet {inst:uart/recver_r_buffer_reg[0]} .original_name {{recver/r_buffer[0]}}
set_db -quiet {inst:uart/recver_r_buffer_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:uart/recver_r_buffer_reg[0]} .single_bit_orig_name {recver/r_buffer[0]}
set_db -quiet {inst:uart/recver_r_buffer_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:uart/recver_r_buffer_reg[0]/Q} .original_name {recver/r_buffer[0]/q}
set_db -quiet {pin:uart/recver_r_buffer_reg[0]/Q} .dont_touch false
set_db -quiet {inst:uart/recver_r_buffer_reg[6]} .original_name {{recver/r_buffer[6]}}
set_db -quiet {inst:uart/recver_r_buffer_reg[6]} .orig_hdl_instantiated false
set_db -quiet {inst:uart/recver_r_buffer_reg[6]} .single_bit_orig_name {recver/r_buffer[6]}
set_db -quiet {inst:uart/recver_r_buffer_reg[6]} .gint_phase_inversion false
set_db -quiet {pin:uart/recver_r_buffer_reg[6]/Q} .original_name {recver/r_buffer[6]/q}
set_db -quiet {pin:uart/recver_r_buffer_reg[6]/Q} .dont_touch false
set_db -quiet {inst:uart/recver_r_buffer_reg[7]} .original_name {{recver/r_buffer[7]}}
set_db -quiet {inst:uart/recver_r_buffer_reg[7]} .orig_hdl_instantiated false
set_db -quiet {inst:uart/recver_r_buffer_reg[7]} .single_bit_orig_name {recver/r_buffer[7]}
set_db -quiet {inst:uart/recver_r_buffer_reg[7]} .gint_phase_inversion false
set_db -quiet {pin:uart/recver_r_buffer_reg[7]/Q} .original_name {recver/r_buffer[7]/q}
set_db -quiet {pin:uart/recver_r_buffer_reg[7]/Q} .dont_touch false
set_db -quiet {inst:uart/recver_r_buffer_reg[3]} .original_name {{recver/r_buffer[3]}}
set_db -quiet {inst:uart/recver_r_buffer_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:uart/recver_r_buffer_reg[3]} .single_bit_orig_name {recver/r_buffer[3]}
set_db -quiet {inst:uart/recver_r_buffer_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:uart/recver_r_buffer_reg[3]/Q} .original_name {recver/r_buffer[3]/q}
set_db -quiet {pin:uart/recver_r_buffer_reg[3]/Q} .dont_touch false
set_db -quiet {inst:uart/recver_r_data_reg[1]} .original_name {{recver/r_data[1]}}
set_db -quiet {inst:uart/recver_r_data_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:uart/recver_r_data_reg[1]} .single_bit_orig_name {recver/r_data[1]}
set_db -quiet {inst:uart/recver_r_data_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:uart/recver_r_data_reg[1]/Q} .original_name {recver/r_data[1]/q}
set_db -quiet {inst:uart/recver_r_data_reg[2]} .original_name {{recver/r_data[2]}}
set_db -quiet {inst:uart/recver_r_data_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:uart/recver_r_data_reg[2]} .single_bit_orig_name {recver/r_data[2]}
set_db -quiet {inst:uart/recver_r_data_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:uart/recver_r_data_reg[2]/Q} .original_name {recver/r_data[2]/q}
set_db -quiet {inst:uart/recver_r_data_reg[3]} .original_name {{recver/r_data[3]}}
set_db -quiet {inst:uart/recver_r_data_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:uart/recver_r_data_reg[3]} .single_bit_orig_name {recver/r_data[3]}
set_db -quiet {inst:uart/recver_r_data_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:uart/recver_r_data_reg[3]/Q} .original_name {recver/r_data[3]/q}
set_db -quiet {inst:uart/recver_r_data_reg[4]} .original_name {{recver/r_data[4]}}
set_db -quiet {inst:uart/recver_r_data_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:uart/recver_r_data_reg[4]} .single_bit_orig_name {recver/r_data[4]}
set_db -quiet {inst:uart/recver_r_data_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:uart/recver_r_data_reg[4]/Q} .original_name {recver/r_data[4]/q}
set_db -quiet {inst:uart/recver_r_data_reg[5]} .original_name {{recver/r_data[5]}}
set_db -quiet {inst:uart/recver_r_data_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:uart/recver_r_data_reg[5]} .single_bit_orig_name {recver/r_data[5]}
set_db -quiet {inst:uart/recver_r_data_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:uart/recver_r_data_reg[5]/Q} .original_name {recver/r_data[5]/q}
set_db -quiet {inst:uart/recver_r_data_reg[6]} .original_name {{recver/r_data[6]}}
set_db -quiet {inst:uart/recver_r_data_reg[6]} .orig_hdl_instantiated false
set_db -quiet {inst:uart/recver_r_data_reg[6]} .single_bit_orig_name {recver/r_data[6]}
set_db -quiet {inst:uart/recver_r_data_reg[6]} .gint_phase_inversion false
set_db -quiet {pin:uart/recver_r_data_reg[6]/Q} .original_name {recver/r_data[6]/q}
set_db -quiet {inst:uart/recver_r_data_reg[7]} .original_name {{recver/r_data[7]}}
set_db -quiet {inst:uart/recver_r_data_reg[7]} .orig_hdl_instantiated false
set_db -quiet {inst:uart/recver_r_data_reg[7]} .single_bit_orig_name {recver/r_data[7]}
set_db -quiet {inst:uart/recver_r_data_reg[7]} .gint_phase_inversion false
set_db -quiet {pin:uart/recver_r_data_reg[7]/Q} .original_name {recver/r_data[7]/q}
set_db -quiet {inst:uart/recver_r_data_reg[0]} .original_name {{recver/r_data[0]}}
set_db -quiet {inst:uart/recver_r_data_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:uart/recver_r_data_reg[0]} .single_bit_orig_name {recver/r_data[0]}
set_db -quiet {inst:uart/recver_r_data_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:uart/recver_r_data_reg[0]/Q} .original_name {recver/r_data[0]/q}
set_db -quiet inst:uart/recver_sampling_reg .original_name recver/sampling
set_db -quiet inst:uart/recver_sampling_reg .orig_hdl_instantiated false
set_db -quiet inst:uart/recver_sampling_reg .single_bit_orig_name recver/sampling
set_db -quiet inst:uart/recver_sampling_reg .gint_phase_inversion false
set_db -quiet pin:uart/recver_sampling_reg/Q .original_name recver/sampling/q
set_db -quiet {inst:uart/recver_sampling_place_reg[1]} .original_name {{recver/sampling_place[1]}}
set_db -quiet {inst:uart/recver_sampling_place_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:uart/recver_sampling_place_reg[1]} .single_bit_orig_name {recver/sampling_place[1]}
set_db -quiet {inst:uart/recver_sampling_place_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:uart/recver_sampling_place_reg[1]/Q} .original_name {recver/sampling_place[1]/q}
set_db -quiet {inst:uart/recver_sampling_place_reg[3]} .original_name {{recver/sampling_place[3]}}
set_db -quiet {inst:uart/recver_sampling_place_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:uart/recver_sampling_place_reg[3]} .single_bit_orig_name {recver/sampling_place[3]}
set_db -quiet {inst:uart/recver_sampling_place_reg[3]} .gint_phase_inversion true
set_db -quiet {pin:uart/recver_sampling_place_reg[3]/Q} .original_name {recver/sampling_place[3]/q}
set_db -quiet {pin:uart/recver_sampling_place_reg[3]/Q} .is_phase_inverted true
set_db -quiet {inst:uart/recver_sampling_place_reg[2]} .original_name {{recver/sampling_place[2]}}
set_db -quiet {inst:uart/recver_sampling_place_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:uart/recver_sampling_place_reg[2]} .single_bit_orig_name {recver/sampling_place[2]}
set_db -quiet {inst:uart/recver_sampling_place_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:uart/recver_sampling_place_reg[2]/Q} .original_name {recver/sampling_place[2]/q}
set_db -quiet {inst:uart/recver_sampling_place_reg[0]} .original_name {{recver/sampling_place[0]}}
set_db -quiet {inst:uart/recver_sampling_place_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:uart/recver_sampling_place_reg[0]} .single_bit_orig_name {recver/sampling_place[0]}
set_db -quiet {inst:uart/recver_sampling_place_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:uart/recver_sampling_place_reg[0]/Q} .original_name {recver/sampling_place[0]/q}
set_db -quiet inst:uart/recver_frame_error_reg .original_name recver/frame_error
set_db -quiet inst:uart/recver_frame_error_reg .orig_hdl_instantiated false
set_db -quiet inst:uart/recver_frame_error_reg .single_bit_orig_name recver/frame_error
set_db -quiet inst:uart/recver_frame_error_reg .gint_phase_inversion true
set_db -quiet pin:uart/recver_frame_error_reg/Q .original_name recver/frame_error/q
set_db -quiet pin:uart/recver_frame_error_reg/QN .original_name recver/frame_error/q
set_db -quiet pin:uart/recver_frame_error_reg/QN .is_phase_inverted true
set_db -quiet {inst:uart/recver_no_bits_rcvd_reg[3]} .original_name {{recver/no_bits_rcvd[3]}}
set_db -quiet {inst:uart/recver_no_bits_rcvd_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:uart/recver_no_bits_rcvd_reg[3]} .single_bit_orig_name {recver/no_bits_rcvd[3]}
set_db -quiet {inst:uart/recver_no_bits_rcvd_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:uart/recver_no_bits_rcvd_reg[3]/Q} .original_name {recver/no_bits_rcvd[3]/q}
set_db -quiet inst:uart/recver_r_ready_reg .original_name recver/r_ready
set_db -quiet inst:uart/recver_r_ready_reg .orig_hdl_instantiated false
set_db -quiet inst:uart/recver_r_ready_reg .single_bit_orig_name recver/r_ready
set_db -quiet inst:uart/recver_r_ready_reg .gint_phase_inversion false
set_db -quiet pin:uart/recver_r_ready_reg/Q .original_name recver/r_ready/q
set_db -quiet {inst:uart/recver_no_bits_rcvd_reg[2]} .original_name {{recver/no_bits_rcvd[2]}}
set_db -quiet {inst:uart/recver_no_bits_rcvd_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:uart/recver_no_bits_rcvd_reg[2]} .single_bit_orig_name {recver/no_bits_rcvd[2]}
set_db -quiet {inst:uart/recver_no_bits_rcvd_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:uart/recver_no_bits_rcvd_reg[2]/Q} .original_name {recver/no_bits_rcvd[2]/q}
set_db -quiet {inst:uart/recver_no_bits_rcvd_reg[1]} .original_name {{recver/no_bits_rcvd[1]}}
set_db -quiet {inst:uart/recver_no_bits_rcvd_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:uart/recver_no_bits_rcvd_reg[1]} .single_bit_orig_name {recver/no_bits_rcvd[1]}
set_db -quiet {inst:uart/recver_no_bits_rcvd_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:uart/recver_no_bits_rcvd_reg[1]/Q} .original_name {recver/no_bits_rcvd[1]/q}
set_db -quiet {inst:uart/recver_no_bits_rcvd_reg[0]} .original_name {{recver/no_bits_rcvd[0]}}
set_db -quiet {inst:uart/recver_no_bits_rcvd_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:uart/recver_no_bits_rcvd_reg[0]} .single_bit_orig_name {recver/no_bits_rcvd[0]}
set_db -quiet {inst:uart/recver_no_bits_rcvd_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:uart/recver_no_bits_rcvd_reg[0]/Q} .original_name {recver/no_bits_rcvd[0]/q}
# BEGIN PHYSICAL ANNOTATION SECTION
# END PHYSICAL ANNOTATION SECTION
set_db -quiet source_verbose true
#############################################################
#####   FLOW WRITE   ########################################
##
## Written by Genus(TM) Synthesis Solution version 17.20-p003_1
## Written on 21:38:28 29-Sep 2020
#############################################################
#####   Flow Definitions   ##################################

#############################################################
#####   Step Definitions   ##################################


#############################################################
#####   Attribute Definitions   #############################

if {[is_attribute flow_edit_wildcard_end_steps -obj_type root]} {set_db flow_edit_wildcard_end_steps {}}
if {[is_attribute flow_edit_wildcard_start_steps -obj_type root]} {set_db flow_edit_wildcard_start_steps {}}
if {[is_attribute flow_footer_tcl -obj_type root]} {set_db flow_footer_tcl {}}
if {[is_attribute flow_header_tcl -obj_type root]} {set_db flow_header_tcl {}}
if {[is_attribute flow_metadata -obj_type root]} {set_db flow_metadata {}}
if {[is_attribute flow_step_begin_tcl -obj_type root]} {set_db flow_step_begin_tcl {}}
if {[is_attribute flow_step_check_tcl -obj_type root]} {set_db flow_step_check_tcl {}}
if {[is_attribute flow_step_end_tcl -obj_type root]} {set_db flow_step_end_tcl {}}
if {[is_attribute flow_step_order -obj_type root]} {set_db flow_step_order {}}
if {[is_attribute flow_summary_tcl -obj_type root]} {set_db flow_summary_tcl {}}
if {[is_attribute flow_template_feature_definition -obj_type root]} {set_db flow_template_feature_definition {}}
if {[is_attribute flow_template_type -obj_type root]} {set_db flow_template_type {}}
if {[is_attribute flow_template_version -obj_type root]} {set_db flow_template_version {}}
if {[is_attribute flow_user_templates -obj_type root]} {set_db flow_user_templates {}}


#############################################################
#####   Flow History   ######################################

if {[is_attribute flow_branch -obj_type root]} {set_db flow_branch {}}
if {[is_attribute flow_caller_data -obj_type root]} {set_db flow_caller_data {}}
if {[is_attribute flow_current -obj_type root]} {set_db flow_current {}}
if {[is_attribute flow_hier_path -obj_type root]} {set_db flow_hier_path {}}
if {[is_attribute flow_database_directory -obj_type root]} {set_db flow_database_directory dbs}
if {[is_attribute flow_exit_when_done -obj_type root]} {set_db flow_exit_when_done false}
if {[is_attribute flow_history -obj_type root]} {set_db flow_history {}}
if {[is_attribute flow_log_directory -obj_type root]} {set_db flow_log_directory logs}
if {[is_attribute flow_mail_on_error -obj_type root]} {set_db flow_mail_on_error false}
if {[is_attribute flow_mail_to -obj_type root]} {set_db flow_mail_to {}}
if {[is_attribute flow_metrics_file -obj_type root]} {set_db flow_metrics_file {}}
if {[is_attribute flow_metrics_snapshot_parent_uuid -obj_type root]} {set_db flow_metrics_snapshot_parent_uuid {}}
if {[is_attribute flow_metrics_snapshot_uuid -obj_type root]} {set_db flow_metrics_snapshot_uuid 8e582610-3c88-4d27-ba69-fba602073aae}
if {[is_attribute flow_overwrite_database -obj_type root]} {set_db flow_overwrite_database false}
if {[is_attribute flow_report_directory -obj_type root]} {set_db flow_report_directory reports}
if {[is_attribute flow_run_tag -obj_type root]} {set_db flow_run_tag {}}
if {[is_attribute flow_schedule -obj_type root]} {set_db flow_schedule {}}
if {[is_attribute flow_script -obj_type root]} {set_db flow_script {}}
if {[is_attribute flow_starting_db -obj_type root]} {set_db flow_starting_db {}}
if {[is_attribute flow_status_file -obj_type root]} {set_db flow_status_file {}}
if {[is_attribute flow_step_canonical_current -obj_type root]} {set_db flow_step_canonical_current {}}
if {[is_attribute flow_step_current -obj_type root]} {set_db flow_step_current {}}
if {[is_attribute flow_step_last -obj_type root]} {set_db flow_step_last {}}
if {[is_attribute flow_step_last_msg -obj_type root]} {set_db flow_step_last_msg {}}
if {[is_attribute flow_step_last_status -obj_type root]} {set_db flow_step_last_status not_run}
if {[is_attribute flow_step_next -obj_type root]} {set_db flow_step_next {}}
if {[is_attribute flow_working_directory -obj_type root]} {set_db flow_working_directory .}

#############################################################
#####   User Defined Attributes   ###########################

