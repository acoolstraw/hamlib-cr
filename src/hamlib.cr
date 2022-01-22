@[Link(ldflags: "`command -v pkg-config > /dev/null && pkg-config --libs hamlib 2> /dev/null|| printf %s '-lhamlib'`")]
lib Hamlib
  alias AntT = LibC::UInt
  alias ChanCbT = (Rig*, ChannelT**, LibC::Int, ChanT*, Void* -> LibC::Int)
  alias ConfvalCbT = (Rig*, Confparams*, ValueT*, Void* -> LibC::Int)
  alias DcdCbT = (Rig*, VfoT, DcdT, Void* -> LibC::Int)
  alias FreqCbT = (Rig*, VfoT, FreqT, Void* -> LibC::Int)
  alias FreqT = LibC::Double
  alias ModeCbT = (Rig*, VfoT, RmodeT, PbwidthT, Void* -> LibC::Int)
  alias PbwidthT = ShortfreqT
  alias PltuneCbT = (Rig*, VfoT, FreqT*, RmodeT*, PbwidthT*, Void* -> LibC::Int)
  alias PttCbT = (Rig*, VfoT, PttT, Void* -> LibC::Int)
  alias RigModelT = Uint32T
  alias RmodeT = Uint64T
  alias SettingT = Uint64T
  alias ShortfreqT = LibC::Long
  alias SpectrumCbT = (Rig*, RigSpectrumLine*, Void* -> LibC::Int)
  alias TimeT = X__TimeT
  alias TokenT = LibC::Long
  alias ToneT = LibC::UInt
  alias Uint32T = X__Uint32T
  alias Uint64T = X__Uint64T
  alias VfoCbT = (Rig*, VfoT, Void* -> LibC::Int)
  alias VfoT = LibC::UInt
  alias X__SyscallSlongT = LibC::Long
  alias X__TimeT = LibC::Long
  alias X__Uint32T = LibC::UInt
  alias X__Uint64T = LibC::ULong
  enum AgcLevelE
    RigAgcOff       = 0
    RigAgcSuperfast = 1
    RigAgcFast      = 2
    RigAgcSlow      = 3
    RigAgcUser      = 4
    RigAgcMedium    = 5
    RigAgcAuto      = 6
  end
  enum AnnT
    RigAnnNone   =  0
    RigAnnOff    =  0
    RigAnnFreq   =  1
    RigAnnRxmode =  2
    RigAnnCw     =  4
    RigAnnEng    =  8
    RigAnnJap    = 16
  end
  enum ChanTypeT
    RigMtypeNone    = 0
    RigMtypeMem     = 1
    RigMtypeEdge    = 2
    RigMtypeCall    = 3
    RigMtypeMemopad = 4
    RigMtypeSat     = 5
    RigMtypeBand    = 6
    RigMtypePrio    = 7
  end
  enum DcdE
    RigDcdOff = 0
    RigDcdOn  = 1
  end
  enum DcdTypeT
    RigDcdNone      = 0
    RigDcdRig       = 1
    RigDcdSerialDsr = 2
    RigDcdSerialCts = 3
    RigDcdSerialCar = 4
    RigDcdParallel  = 5
    RigDcdCm108     = 6
    RigDcdGpio      = 7
    RigDcdGpion     = 8
  end
  enum PowerstatT
    RigPowerOff     = 0
    RigPowerOn      = 1
    RigPowerStandby = 2
    RigPowerOperate = 4
    RigPowerUnknown = 8
  end
  enum PttT
    RigPttOff    = 0
    RigPttOn     = 1
    RigPttOnMic  = 2
    RigPttOnData = 3
  end
  enum PttTypeT
    RigPttNone       = 0
    RigPttRig        = 1
    RigPttSerialDtr  = 2
    RigPttSerialRts  = 3
    RigPttParallel   = 4
    RigPttRigMicdata = 5
    RigPttCm108      = 6
    RigPttGpio       = 7
    RigPttGpion      = 8
  end
  enum ResetT
    RigResetNone   = 0
    RigResetSoft   = 1
    RigResetVfo    = 2
    RigResetMcall  = 4
    RigResetMaster = 8
  end
  enum RigConfE
    RigConfString      = 0
    RigConfCombo       = 1
    RigConfNumeric     = 2
    RigConfCheckbutton = 3
    RigConfButton      = 4
    RigConfBinary      = 5
  end
  enum RigPortE
    RigPortNone       =  0
    RigPortSerial     =  1
    RigPortNetwork    =  2
    RigPortDevice     =  3
    RigPortPacket     =  4
    RigPortDtmf       =  5
    RigPortUltra      =  6
    RigPortRpc        =  7
    RigPortParallel   =  8
    RigPortUsb        =  9
    RigPortUdpNetwork = 10
    RigPortCm108      = 11
    RigPortGpio       = 12
    RigPortGpion      = 13
  end
  enum RigSpectrumModeE
    RigSpectrumModeNone         = 0
    RigSpectrumModeCenter       = 1
    RigSpectrumModeFixed        = 2
    RigSpectrumModeCenterScroll = 3
    RigSpectrumModeFixedScroll  = 4
  end
  enum RigStatusE
    RigStatusAlpha    = 0
    RigStatusUntested = 1
    RigStatusBeta     = 2
    RigStatusStable   = 3
    RigStatusBuggy    = 4
  end
  enum RptrShiftT
    RigRptShiftNone  = 0
    RigRptShiftMinus = 1
    RigRptShiftPlus  = 2
  end
  enum ScanT
    RigScanNone  =   0
    RigScanMem   =   1
    RigScanSlct  =   2
    RigScanPrio  =   4
    RigScanProg  =   8
    RigScanDelta =  16
    RigScanVfo   =  32
    RigScanPlt   =  64
    RigScanStop  = 128
  end
  enum SerialControlStateE
    RigSignalUnset = 0
    RigSignalOn    = 1
    RigSignalOff   = 2
  end
  enum SerialHandshakeE
    RigHandshakeNone     = 0
    RigHandshakeXonxoff  = 1
    RigHandshakeHardware = 2
  end
  enum SerialParityE
    RigParityNone  = 0
    RigParityOdd   = 1
    RigParityEven  = 2
    RigParityMark  = 3
    RigParitySpace = 4
  end
  enum SplitT
    RigSplitOff = 0
    RigSplitOn  = 1
  end
  enum VfoOpT
    RigOpNone     =    0
    RigOpCpy      =    1
    RigOpXchg     =    2
    RigOpFromVfo  =    4
    RigOpToVfo    =    8
    RigOpMcl      =   16
    RigOpUp       =   32
    RigOpDown     =   64
    RigOpBandUp   =  128
    RigOpBandDown =  256
    RigOpLeft     =  512
    RigOpRight    = 1024
    RigOpTune     = 2048
    RigOpToggle   = 4096
  end
  fun amp_strlevel(x0 : SettingT) : LibC::Char*
  fun rig_get_vfo_info(rig : Rig*, vfo : VfoT, freq : FreqT*, mode : RmodeT*, width : PbwidthT*, split : SplitT*, satmode : LibC::Int*) : LibC::Int

  struct CalTable
    size : LibC::Int
    table : CalTableTable[32]
  end

  struct CalTableFloat
    size : LibC::Int
    table : CalTableTable[32]
  end

  struct CalTableTable
    raw : LibC::Int
    val : LibC::Int
  end

  struct ChanList
    startc : LibC::Int
    endc : LibC::Int
    type : ChanTypeT
    mem_caps : ChannelCapT
  end

  struct Channel
    channel_num : LibC::Int
    bank_num : LibC::Int
    vfo : VfoT
    ant : AntT
    freq : FreqT
    mode : RmodeT
    width : PbwidthT
    tx_freq : FreqT
    tx_mode : RmodeT
    tx_width : PbwidthT
    split : SplitT
    tx_vfo : VfoT
    rptr_shift : RptrShiftT
    rptr_offs : ShortfreqT
    tuning_step : ShortfreqT
    rit : ShortfreqT
    xit : ShortfreqT
    funcs : SettingT
    levels : ValueT[64]
    ctcss_tone : ToneT
    ctcss_sql : ToneT
    dcs_code : ToneT
    dcs_sql : ToneT
    scan_group : LibC::Int
    flags : LibC::UInt
    channel_desc : LibC::Char[30]
    ext_levels : ExtList*
  end

  struct ChannelCap
    bank_num : LibC::UInt
    vfo : LibC::UInt
    ant : LibC::UInt
    freq : LibC::UInt
    mode : LibC::UInt
    width : LibC::UInt
    tx_freq : LibC::UInt
    tx_mode : LibC::UInt
    tx_width : LibC::UInt
    split : LibC::UInt
    tx_vfo : LibC::UInt
    rptr_shift : LibC::UInt
    rptr_offs : LibC::UInt
    tuning_step : LibC::UInt
    rit : LibC::UInt
    xit : LibC::UInt
    funcs : SettingT
    levels : SettingT
    ctcss_tone : LibC::UInt
    ctcss_sql : LibC::UInt
    dcs_code : LibC::UInt
    dcs_sql : LibC::UInt
    scan_group : LibC::UInt
    flags : LibC::UInt
    channel_desc : LibC::UInt
    ext_levels : LibC::UInt
  end

  struct Confparams
    token : TokenT
    name : LibC::Char*
    label : LibC::Char*
    tooltip : LibC::Char*
    dflt : LibC::Char*
    type : RigConfE
    u : ConfparamsU
  end

  struct ConfparamsUC
    combostr : LibC::Char*[16]
  end

  struct ConfparamsUN
    min : LibC::Float
    max : LibC::Float
    step : LibC::Float
  end

  struct ExtList
    token : TokenT
    val : ValueT
  end

  struct FilterList
    modes : RmodeT
    width : PbwidthT
  end

  struct FreqRangeList
    startf : FreqT
    endf : FreqT
    modes : RmodeT
    low_power : LibC::Int
    high_power : LibC::Int
    vfo : VfoT
    ant : AntT
    label : LibC::Char*
  end

  struct Gran
    min : ValueT
    max : ValueT
    step : ValueT
  end

  struct HamlibPort
    type : HamlibPortType
    fd : LibC::Int
    handle : Void*
    write_delay : LibC::Int
    post_write_delay : LibC::Int
    post_write_date : HamlibPortPostWriteDate
    timeout : LibC::Int
    retry : LibC::Short
    flushx : LibC::Short
    pathname : LibC::Char[512]
    parm : HamlibPortParm
    client_port : LibC::Int
    rig : Rig*
  end

  struct HamlibPortParmCm108
    ptt_bitnum : LibC::Int
  end

  struct HamlibPortParmGpio
    on_value : LibC::Int
    value : LibC::Int
  end

  struct HamlibPortParmParallel
    pin : LibC::Int
  end

  struct HamlibPortParmSerial
    rate : LibC::Int
    data_bits : LibC::Int
    stop_bits : LibC::Int
    parity : SerialParityE
    handshake : SerialHandshakeE
    rts_state : SerialControlStateE
    dtr_state : SerialControlStateE
  end

  struct HamlibPortParmUsb
    vid : LibC::Int
    pid : LibC::Int
    conf : LibC::Int
    iface : LibC::Int
    alt : LibC::Int
    vendor_name : LibC::Char*
    product : LibC::Char*
  end

  struct HamlibPortPostWriteDate
    tv_sec : LibC::Int
    tv_usec : LibC::Int
  end

  struct RigCache
    timeout_ms : LibC::Int
    vfo : VfoT
    freq_curr : FreqT
    freq_other : FreqT
    freq_main_a : FreqT
    freq_main_b : FreqT
    freq_main_c : FreqT
    freq_sub_a : FreqT
    freq_sub_b : FreqT
    freq_sub_c : FreqT
    freq_mem : FreqT
    mode_curr : RmodeT
    mode_other : RmodeT
    mode_main_a : RmodeT
    mode_main_b : RmodeT
    mode_main_c : RmodeT
    mode_sub_a : RmodeT
    mode_sub_b : RmodeT
    mode_sub_c : RmodeT
    mode_mem : RmodeT
    width_curr : PbwidthT
    width_other : PbwidthT
    width_main_a : PbwidthT
    width_main_b : PbwidthT
    width_main_c : PbwidthT
    width_sub_a : PbwidthT
    width_sub_b : PbwidthT
    width_sub_c : PbwidthT
    width_mem : PbwidthT
    ptt : PttT
    split : SplitT
    split_vfo : VfoT
    time_freq_curr : Timespec
    time_freq_other : Timespec
    time_freq_main_a : Timespec
    time_freq_main_b : Timespec
    time_freq_main_c : Timespec
    time_freq_sub_a : Timespec
    time_freq_sub_b : Timespec
    time_freq_sub_c : Timespec
    time_freq_mem : Timespec
    time_vfo : Timespec
    time_mode_curr : Timespec
    time_mode_other : Timespec
    time_mode_main_a : Timespec
    time_mode_main_b : Timespec
    time_mode_main_c : Timespec
    time_mode_sub_a : Timespec
    time_mode_sub_b : Timespec
    time_mode_sub_c : Timespec
    time_mode_mem : Timespec
    time_width_curr : Timespec
    time_width_other : Timespec
    time_width_main_a : Timespec
    time_width_main_b : Timespec
    time_width_main_c : Timespec
    time_width_sub_a : Timespec
    time_width_sub_b : Timespec
    time_width_sub_c : Timespec
    time_width_mem : Timespec
    time_ptt : Timespec
    time_split : Timespec
    satmode : LibC::Int
  end

  struct RigCallbacks
    freq_event : FreqCbT
    freq_arg : Void*
    mode_event : ModeCbT
    mode_arg : Void*
    vfo_event : VfoCbT
    vfo_arg : Void*
    ptt_event : PttCbT
    ptt_arg : Void*
    dcd_event : DcdCbT
    dcd_arg : Void*
    pltune : PltuneCbT
    pltune_arg : Void*
    spectrum_event : SpectrumCbT
    spectrum_arg : Void*
  end

  struct RigCaps
    rig_model : RigModelT
    model_name : LibC::Char*
    mfg_name : LibC::Char*
    version : LibC::Char*
    copyright : LibC::Char*
    status : RigStatusE
    rig_type : LibC::Int
    ptt_type : PttTypeT
    dcd_type : DcdTypeT
    port_type : RigPortT
    serial_rate_min : LibC::Int
    serial_rate_max : LibC::Int
    serial_data_bits : LibC::Int
    serial_stop_bits : LibC::Int
    serial_parity : SerialParityE
    serial_handshake : SerialHandshakeE
    write_delay : LibC::Int
    post_write_delay : LibC::Int
    timeout : LibC::Int
    retry : LibC::Int
    has_get_func : SettingT
    has_set_func : SettingT
    has_get_level : SettingT
    has_set_level : SettingT
    has_get_parm : SettingT
    has_set_parm : SettingT
    level_gran : GranT[64]
    parm_gran : GranT[64]
    extparms : Confparams*
    extlevels : Confparams*
    extfuncs : Confparams*
    ext_tokens : LibC::Int*
    ctcss_list : ToneT*
    dcs_list : ToneT*
    preamp : LibC::Int[8]
    attenuator : LibC::Int[8]
    max_rit : ShortfreqT
    max_xit : ShortfreqT
    max_ifshift : ShortfreqT
    agc_level_count : LibC::Int
    agc_levels : AgcLevelE[8]
    announces : AnnT
    vfo_ops : VfoOpT
    scan_ops : ScanT
    targetable_vfo : LibC::Int
    transceive : LibC::Int
    bank_qty : LibC::Int
    chan_desc_sz : LibC::Int
    chan_list : ChanT[16]
    rx_range_list1 : FreqRangeT[30]
    tx_range_list1 : FreqRangeT[30]
    rx_range_list2 : FreqRangeT[30]
    tx_range_list2 : FreqRangeT[30]
    rx_range_list3 : FreqRangeT[30]
    tx_range_list3 : FreqRangeT[30]
    rx_range_list4 : FreqRangeT[30]
    tx_range_list4 : FreqRangeT[30]
    rx_range_list5 : FreqRangeT[30]
    tx_range_list5 : FreqRangeT[30]
    tuning_steps : TuningStepList[20]
    filters : FilterList[60]
    str_cal : CalTableT
    swr_cal : CalTableFloatT
    alc_cal : CalTableFloatT
    rfpower_meter_cal : CalTableFloatT
    comp_meter_cal : CalTableFloatT
    vd_meter_cal : CalTableFloatT
    id_meter_cal : CalTableFloatT
    spectrum_scopes : RigSpectrumScope[4]
    spectrum_modes : RigSpectrumModeE[5]
    spectrum_spans : FreqT[20]
    spectrum_avg_modes : RigSpectrumAvgMode[12]
    spectrum_attenuator : LibC::Int[8]
    cfgparams : Confparams*
    priv : Void*
    rig_init : (Rig* -> LibC::Int)
    rig_cleanup : (Rig* -> LibC::Int)
    rig_open : (Rig* -> LibC::Int)
    rig_close : (Rig* -> LibC::Int)
    set_freq : (Rig*, VfoT, FreqT -> LibC::Int)
    get_freq : (Rig*, VfoT, FreqT -> LibC::Int)
    set_mode : (Rig*, VfoT, RmodeT, PbwidthT -> LibC::Int)
    get_mode : (Rig*, VfoT, RmodeT, PbwidthT -> LibC::Int)
    set_vfo : (Rig*, VfoT -> LibC::Int)
    get_vfo : (Rig*, VfoT -> LibC::Int)
    set_ptt : (Rig*, VfoT, PttT -> LibC::Int)
    get_ptt : (Rig*, VfoT, PttT -> LibC::Int)
    get_dcd : (Rig*, VfoT, DcdT* -> LibC::Int)
    set_rptr_shift : (Rig*, VfoT, RptrShiftT -> LibC::Int)
    get_rptr_shift : (Rig*, VfoT, RptrShiftT -> LibC::Int)
    set_rptr_offs : (Rig*, VfoT, ShortfreqT -> LibC::Int)
    get_rptr_offs : (Rig*, VfoT, ShortfreqT -> LibC::Int)
    set_split_freq : (Rig*, VfoT, FreqT -> LibC::Int)
    get_split_freq : (Rig*, VfoT, FreqT -> LibC::Int)
    set_split_mode : (Rig*, VfoT, RmodeT, PbwidthT -> LibC::Int)
    get_split_mode : (Rig*, VfoT, RmodeT, PbwidthT -> LibC::Int)
    set_split_freq_mode : (Rig*, VfoT, FreqT, RmodeT, PbwidthT -> LibC::Int)
    get_split_freq_mode : (Rig*, VfoT, FreqT, RmodeT, PbwidthT -> LibC::Int)
    set_split_vfo : (Rig*, VfoT, SplitT, VfoT -> LibC::Int)
    get_split_vfo : (Rig*, VfoT, SplitT, VfoT -> LibC::Int)
    set_rit : (Rig*, VfoT, ShortfreqT -> LibC::Int)
    get_rit : (Rig*, VfoT, ShortfreqT -> LibC::Int)
    set_xit : (Rig*, VfoT, ShortfreqT -> LibC::Int)
    get_xit : (Rig*, VfoT, ShortfreqT -> LibC::Int)
    set_ts : (Rig*, VfoT, ShortfreqT -> LibC::Int)
    get_ts : (Rig*, VfoT, ShortfreqT -> LibC::Int)
    set_dcs_code : (Rig*, VfoT, ToneT -> LibC::Int)
    get_dcs_code : (Rig*, VfoT, ToneT -> LibC::Int)
    set_tone : (Rig*, VfoT, ToneT -> LibC::Int)
    get_tone : (Rig*, VfoT, ToneT -> LibC::Int)
    set_ctcss_tone : (Rig*, VfoT, ToneT -> LibC::Int)
    get_ctcss_tone : (Rig*, VfoT, ToneT -> LibC::Int)
    set_dcs_sql : (Rig*, VfoT, ToneT -> LibC::Int)
    get_dcs_sql : (Rig*, VfoT, ToneT -> LibC::Int)
    set_tone_sql : (Rig*, VfoT, ToneT -> LibC::Int)
    get_tone_sql : (Rig*, VfoT, ToneT -> LibC::Int)
    set_ctcss_sql : (Rig*, VfoT, ToneT -> LibC::Int)
    get_ctcss_sql : (Rig*, VfoT, ToneT -> LibC::Int)
    power2m_w : (Rig*, LibC::UInt*, LibC::Float, FreqT, RmodeT -> LibC::Int)
    m_w2power : (Rig*, LibC::Float*, LibC::UInt, FreqT, RmodeT -> LibC::Int)
    set_powerstat : (Rig*, PowerstatT -> LibC::Int)
    get_powerstat : (Rig*, PowerstatT -> LibC::Int)
    reset : (Rig*, ResetT -> LibC::Int)
    set_ant : (Rig*, VfoT, AntT, ValueT -> LibC::Int)
    get_ant : (Rig*, VfoT, AntT, ValueT*, AntT*, AntT*, AntT* -> LibC::Int)
    set_level : (Rig*, VfoT, SettingT, ValueT -> LibC::Int)
    get_level : (Rig*, VfoT, SettingT, ValueT -> LibC::Int)
    set_func : (Rig*, VfoT, SettingT, LibC::Int -> LibC::Int)
    get_func : (Rig*, VfoT, SettingT, LibC::Int -> LibC::Int)
    set_parm : (Rig*, SettingT, ValueT -> LibC::Int)
    get_parm : (Rig*, SettingT, ValueT -> LibC::Int)
    set_ext_level : (Rig*, VfoT, TokenT, ValueT -> LibC::Int)
    get_ext_level : (Rig*, VfoT, TokenT, ValueT -> LibC::Int)
    set_ext_func : (Rig*, VfoT, TokenT, LibC::Int -> LibC::Int)
    get_ext_func : (Rig*, VfoT, TokenT, LibC::Int -> LibC::Int)
    set_ext_parm : (Rig*, TokenT, ValueT -> LibC::Int)
    get_ext_parm : (Rig*, TokenT, ValueT -> LibC::Int)
    set_conf : (Rig*, TokenT, LibC::Char* -> LibC::Int)
    get_conf : (Rig*, TokenT, LibC::Char* -> LibC::Int)
    send_dtmf : (Rig*, VfoT, LibC::Char* -> LibC::Int)
    recv_dtmf : (Rig*, VfoT, LibC::Char*, LibC::Int* -> LibC::Int)
    send_morse : (Rig*, VfoT, LibC::Char* -> LibC::Int)
    stop_morse : (Rig*, VfoT -> LibC::Int)
    wait_morse : (Rig*, VfoT -> LibC::Int)
    send_voice_mem : (Rig*, VfoT, LibC::Int -> LibC::Int)
    set_bank : (Rig*, VfoT, LibC::Int -> LibC::Int)
    set_mem : (Rig*, VfoT, LibC::Int -> LibC::Int)
    get_mem : (Rig*, VfoT, LibC::Int -> LibC::Int)
    vfo_op : (Rig*, VfoT, VfoOpT -> LibC::Int)
    scan : (Rig*, VfoT, ScanT, LibC::Int -> LibC::Int)
    set_trn : (Rig*, LibC::Int -> LibC::Int)
    get_trn : (Rig*, LibC::Int -> LibC::Int)
    decode_event : (Rig* -> LibC::Int)
    set_channel : (Rig*, VfoT, ChannelT* -> LibC::Int)
    get_channel : (Rig*, VfoT, ChannelT*, LibC::Int -> LibC::Int)
    get_info : (Rig* -> LibC::Char*)
    set_chan_all_cb : (Rig*, VfoT, ChanCbT, Void* -> LibC::Int)
    get_chan_all_cb : (Rig*, VfoT, ChanCbT, Void* -> LibC::Int)
    set_mem_all_cb : (Rig*, ChanCbT, ConfvalCbT, Void* -> LibC::Int)
    get_mem_all_cb : (Rig*, ChanCbT, ConfvalCbT, Void* -> LibC::Int)
    set_vfo_opt : (Rig*, LibC::Int -> LibC::Int)
    rig_get_vfo_info : (Rig*, VfoT, FreqT*, RmodeT*, PbwidthT*, SplitT* -> LibC::Int)
    set_clock : (Rig*, LibC::Int, LibC::Int, LibC::Int, LibC::Int, LibC::Int, LibC::Int, LibC::Double, LibC::Int -> LibC::Int)
    get_clock : (Rig*, LibC::Int, LibC::Int, LibC::Int, LibC::Int, LibC::Int, LibC::Int, LibC::Double, LibC::Int -> LibC::Int)
    clone_combo_set : LibC::Char*
    clone_combo_get : LibC::Char*
    macro_name : LibC::Char*
    async_data_supported : LibC::Int
    read_frame_direct : (Rig*, LibC::SizeT, UInt8* -> LibC::Int)
    is_async_frame : (Rig*, LibC::SizeT, UInt8* -> LibC::Int)
    process_async_frame : (Rig*, LibC::SizeT, UInt8* -> LibC::Int)
    hamlib_check_rig_caps : LibC::Char*
  end

  struct RigSpectrumAvgMode
    id : LibC::Int
    name : LibC::Char*
  end

  struct RigSpectrumLine
    id : LibC::Int
    data_level_min : LibC::Int
    data_level_max : LibC::Int
    signal_strength_min : LibC::Double
    signal_strength_max : LibC::Double
    spectrum_mode : RigSpectrumModeE
    center_freq : FreqT
    span_freq : FreqT
    low_edge_freq : FreqT
    high_edge_freq : FreqT
    spectrum_data_length : LibC::SizeT
    spectrum_data : UInt8*
  end

  struct RigSpectrumScope
    id : LibC::Int
    name : LibC::Char*
  end

  struct RigState
    rigport : HamlibPortT
    pttport : HamlibPortT
    dcdport : HamlibPortT
    vfo_comp : LibC::Double
    deprecated_itu_region : LibC::Int
    rx_range_list : FreqRangeT[30]
    tx_range_list : FreqRangeT[30]
    tuning_steps : TuningStepList[20]
    filters : FilterList[60]
    str_cal : CalTableT
    chan_list : ChanT[16]
    max_rit : ShortfreqT
    max_xit : ShortfreqT
    max_ifshift : ShortfreqT
    announces : AnnT
    preamp : LibC::Int[8]
    attenuator : LibC::Int[8]
    has_get_func : SettingT
    has_set_func : SettingT
    has_get_level : SettingT
    has_set_level : SettingT
    has_get_parm : SettingT
    has_set_parm : SettingT
    level_gran : GranT[64]
    parm_gran : GranT[64]
    transaction_active : LibC::Int
    current_vfo : VfoT
    vfo_list : LibC::Int
    comm_state : LibC::Int
    priv : Void*
    obj : Void*
    async_data_enabled : LibC::Int
    poll_interval : LibC::Int
    current_freq : FreqT
    current_mode : RmodeT
    current_width : PbwidthT
    tx_vfo : VfoT
    mode_list : RmodeT
    transmit : LibC::Int
    lo_freq : FreqT
    twiddle_time : TimeT
    twiddle_timeout : LibC::Int
    uplink : LibC::Int
    cache : RigCache
    vfo_opt : LibC::Int
    auto_power_on : LibC::Int
    auto_power_off : LibC::Int
    auto_disable_screensaver : LibC::Int
    ptt_share : LibC::Int
    power_now : LibC::Int
    power_min : LibC::Int
    power_max : LibC::Int
    disable_yaesu_bandselect : UInt8
    twiddle_rit : LibC::Int
    twiddle_state : LibC::Int
    rx_vfo : VfoT
    snapshot_packet_sequence_number : LibC::UInt
    multicast_publisher_run : LibC::Int
    multicast_publisher_priv_data : Void*
    async_data_handler_thread_run : LibC::Int
    async_data_handler_priv_data : Void*
    poll_routine_thread_run : LibC::Int
    poll_routine_priv_data : Void*
  end

  struct SRig
    caps : RigCaps*
    state : RigState
    callbacks : RigCallbacks
  end

  struct Timespec
    tv_sec : X__TimeT
    tv_nsec : X__SyscallSlongT
  end

  struct TuningStepList
    modes : RmodeT
    ts : ShortfreqT
  end

  struct ValueTB
    l : LibC::Int
    d : UInt8*
  end

  type CalTableFloatT = CalTableFloat
  type CalTableT = CalTable
  type ChanT = ChanList
  type ChannelCapT = ChannelCap
  type ChannelT = Channel
  type DcdT = DcdE
  type FreqRangeT = FreqRangeList
  type GranT = Gran
  type HamlibPortT = HamlibPort
  type Rig = SRig
  type RigPortT = RigPortE

  union ConfparamsU
    n : ConfparamsUN
    c : ConfparamsUC
  end

  union HamlibPortParm
    serial : HamlibPortParmSerial
    parallel : HamlibPortParmParallel
    cm108 : HamlibPortParmCm108
    usb : HamlibPortParmUsb
    gpio : HamlibPortParmGpio
  end

  union HamlibPortType
    rig : RigPortT
    ptt : PttTypeT
    dcd : DcdTypeT
  end

  union ValueT
    i : LibC::Int
    f : LibC::Float
    s : LibC::Char*
    cs : LibC::Char*
    b : ValueTB
  end
end

require "./amp.cr"
require "./rig.cr"
require "./rotator.cr"
