ibex_top #(
    .PMPEnable        ( 0                                ),
    .PMPGranularity   ( 0                                ),
    .PMPNumRegions    ( 4                                ),
    .MHPMCounterNum   ( 0                                ),
    .MHPMCounterWidth ( 40                               ),
    .RV32E            ( 0                                ),
    .RV32M            ( ibex_pkg::RV32MFast              ),
    .RV32B            ( ibex_pkg::RV32BNone              ),
    .RegFile          ( ibex_pkg::RegFileFF              ),
    .ICache           ( 0                                ),
    .ICacheECC        ( 0                                ),
    .ICacheScramble   ( 0                                ),
    .BranchPrediction ( 0                                ),
    .SecureIbex       ( 0                                ),
    .RndCnstLfsrSeed  ( ibex_pkg::RndCnstLfsrSeedDefault ),
    .RndCnstLfsrPerm  ( ibex_pkg::RndCnstLfsrPermDefault ),
    .DbgTriggerEn     ( 0                                ),
    .DmHaltAddr       ( 32'h1A110800                     ),
    .DmExceptionAddr  ( 32'h1A110808                     )
) u_top (
    // Clock and reset
    .clk_i                  (),
    .rst_ni                 (),
    .test_en_i              (),
    .scan_rst_ni            (),
    .ram_cfg_i              (),

    // Configuration
    .hart_id_i              (),
    .boot_addr_i            (),

    // Instruction memory interface
    .instr_req_o            (),
    .instr_gnt_i            (),
    .instr_rvalid_i         (),
    .instr_addr_o           (),
    .instr_rdata_i          (),
    .instr_rdata_intg_i     (),
    .instr_err_i            (),

    // Data memory interface
    .data_req_o             (),
    .data_gnt_i             (),
    .data_rvalid_i          (),
    .data_we_o              (),
    .data_be_o              (),
    .data_addr_o            (),
    .data_wdata_o           (),
    .data_wdata_intg_o      (),
    .data_rdata_i           (),
    .data_rdata_intg_i      (),
    .data_err_i             (),

    // Interrupt inputs
    .irq_software_i         (),
    .irq_timer_i            (),
    .irq_external_i         (),
    .irq_fast_i             (),
    .irq_nm_i               (),

    // Debug interface
    .debug_req_i            (),
    .crash_dump_o           (),

    // Special control signals
    .fetch_enable_i         (),
    .alert_minor_o          (),
    .alert_major_internal_o (),
    .alert_major_bus_o      (),
    .core_sleep_o           ()
);