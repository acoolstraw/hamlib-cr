@[Link(ldflags: "`command -v pkg-config > /dev/null && pkg-config --libs hamlib 2> /dev/null|| printf %s '-lhamlib'`")]
lib Hamlib
  alias RigProbeFuncT = (HamlibPortT*, RigModelT, Void* -> LibC::Int)
  alias VaList = X__GnucVaList
  alias VprintfCbT = (RigDebugLevelE, Void*, LibC::Char*, VaList -> LibC::Int)
  alias X_IoCodecvt = Void
  alias X_IoLockT = Void
  alias X_IoMarker = Void
  alias X_IoWideData = Void
  alias X__GnucVaList = LibC::VaList
  alias X__Off64T = LibC::Long
  alias X__OffT = LibC::Long
  # Rig Cookie enumerations
  enum CookieE
    # Setup a cookie
    RigCookieGet = 0
    # Release a cookie
    RigCookieRelease = 1
    # Renew a cookie
    RigCookieRenew = 2
  end
  enum CacheT
    CacheAll   = 0
    CacheVfo   = 1
    CacheFreq  = 2
    CacheMode  = 3
    CachePtt   = 4
    CacheSplit = 5
    CacheWidth = 6
  end
  enum RigCapsCptrE
    RigCapsVersionCptr   = 0
    RigCapsMfgNameCptr   = 1
    RigCapsModelNameCptr = 2
    RigCapsStatusCptr    = 3
  end
  # Enumeration of rig->caps values
  enum RigCapsIntE
    RigCapsTargetableVfo = 0
    RigCapsRigModel      = 1
    RigCapsPortType      = 2
    RigCapsPttType       = 3
    RigCapsHasGetLevel   = 4
  end
  # Hamlib debug levels
  enum RigDebugLevelE
    # no bug reporting
    RigDebugNone = 0
    # serious bug
    RigDebugBug = 1
    # error case (e.g. protocol, memory allocation)
    RigDebugErr = 2
    # warning
    RigDebugWarn = 3
    # verbose
    RigDebugVerbose = 4
    # tracing
    RigDebugTrace = 5
    # caching
    RigDebugCache = 6
  end
  # Enumeration of all rig_ functions
  enum RigFunctionE
    RigFunctionInit              =  0
    RigFunctionCleanup           =  1
    RigFunctionOpen              =  2
    RigFunctionClose             =  3
    RigFunctionSetFreq           =  4
    RigFunctionGetFreq           =  5
    RigFunctionSetMode           =  6
    RigFunctionGetMode           =  7
    RigFunctionSetVfo            =  8
    RigFunctionGetVfo            =  9
    RigFunctionSetPtt            = 10
    RigFunctionGetPtt            = 11
    RigFunctionGetDcd            = 12
    RigFunctionSetRptrShift      = 13
    RigFunctionGetRptrShift      = 14
    RigFunctionSetRptrOffs       = 15
    RigFunctionGetRptrOffs       = 16
    RigFunctionSetSplitFreq      = 17
    RigFunctionGetSplitFreq      = 18
    RigFunctionSetSplitMode      = 19
    RigFunctionSetSplitFreqMode  = 20
    RigFunctionGetSplitFreqMode  = 21
    RigFunctionSetSplitVfo       = 22
    RigFunctionGetSplitVfo       = 23
    RigFunctionSetRit            = 24
    RigFunctionGetRit            = 25
    RigFunctionSetXit            = 26
    RigFunctionGetXit            = 27
    RigFunctionSetTs             = 28
    RigFunctionGetTs             = 29
    RigFunctionSetDcsCode        = 30
    RigFunctionGetDcsCode        = 31
    RigFunctionSetTone           = 32
    RigFunctionGetTone           = 33
    RigFunctionSetCtcssTone      = 34
    RigFunctionGetCtcssTone      = 35
    RigFunctionSetDcsSql         = 36
    RigFunctionGetDcsSql         = 37
    RigFunctionSetToneSql        = 38
    RigFunctionGetToneSql        = 39
    RigFunctionSetCtcssSql       = 40
    RigFunctionGetCtcssSql       = 41
    RigFunctionPower2Mw          = 42
    RigFunctionMw2Power          = 43
    RigFunctionSetPowerstat      = 44
    RigFunctionGetPowerstat      = 45
    RigFunctionReset             = 46
    RigFunctionSetAnt            = 47
    RigFunctionGetAnt            = 48
    RigFunctionSetLevel          = 49
    RigFunctionGetLevel          = 50
    RigFunctionSetFunc           = 51
    RigFunctionGetFunc           = 52
    RigFunctionSetParm           = 53
    RigFunctionGetParm           = 54
    RigFunctionSetExtLevel       = 55
    RigFunctionGetExtLevel       = 56
    RigFunctionSetExtFunc        = 57
    RigFunctionGetExtFunc        = 58
    RigFunctionSetExtParm        = 59
    RigFunctionGetExtParm        = 60
    RigFunctionSetConf           = 61
    RigFunctionGetConf           = 62
    RigFunctionSendDtmf          = 63
    RigFunctionSendMorse         = 64
    RigFunctionStopMorse         = 65
    RigFunctionWaitMorse         = 66
    RigFunctionSendVoiceMem      = 67
    RigFunctionSetBank           = 68
    RigFunctionSetMem            = 69
    RigFunctionGetMem            = 70
    RigFunctionVfoOp             = 71
    RigFunctionScan              = 72
    RigFunctionSetTrn            = 73
    RigFunctionGetTrn            = 74
    RigFunctionDecodeEvent       = 75
    RigFunctionSetChannel        = 76
    RigFunctionGetChannel        = 77
    RigFunctionGetInfo           = 78
    RigFunctionSetChanAllCb      = 79
    RigFunctionGetChanAllCb      = 80
    RigFunctionSetMemAllCb       = 81
    RigFunctionGetMemAllCb       = 82
    RigFunctionSetVfoOpt         = 83
    RigFunctionReadFrameDirect   = 84
    RigFunctionIsAsyncFrame      = 85
    RigFunctionProcessAsyncFrame = 86
  end
  fun rig_check_backend(rig_model : RigModelT) : LibC::Int
  fun rig_cleanup(rig : Rig*) : LibC::Int
  fun rig_close(rig : Rig*) : LibC::Int
  fun rig_confparam_lookup(rig : Rig*, name : LibC::Char*) : Confparams*
  fun rig_cookie(rig : Rig*, cookie_cmd : CookieE, cookie : LibC::Char*, cookie_len : LibC::Int) : LibC::Int
  fun rig_copyright : LibC::Char*
  fun rig_debug(debug_level : RigDebugLevelE, fmt : LibC::Char*, ...)
  fun rig_ext_func_foreach(rig : Rig*, cfunc : (Rig*, Confparams*, Void* -> LibC::Int), data : Void*) : LibC::Int
  fun rig_ext_level_foreach(rig : Rig*, cfunc : (Rig*, Confparams*, Void* -> LibC::Int), data : Void*) : LibC::Int
  fun rig_ext_lookup(rig : Rig*, name : LibC::Char*) : Confparams*
  fun rig_ext_lookup_tok(rig : Rig*, token : TokenT) : Confparams*
  fun rig_ext_parm_foreach(rig : Rig*, cfunc : (Rig*, Confparams*, Void* -> LibC::Int), data : Void*) : LibC::Int
  fun rig_ext_token_lookup(rig : Rig*, name : LibC::Char*) : TokenT
  fun rig_flush(port : HamlibPortT*) : LibC::Int
  fun rig_get_ant(rig : Rig*, vfo : VfoT, ant : AntT, option : ValueT*, ant_curr : AntT*, ant_tx : AntT*, ant_rx : AntT*) : LibC::Int
  fun rig_get_cache(rig : Rig*, vfo : VfoT, freq : FreqT*, cache_ms_freq : LibC::Int*, mode : RmodeT*, cache_ms_mode : LibC::Int*, width : PbwidthT*, cache_ms_width : LibC::Int*) : LibC::Int
  fun rig_get_cache_timeout_ms(rig : Rig*, selection : HamlibCacheT) : LibC::Int
  fun rig_get_caps(rig_model : RigModelT) : RigCaps*
  # Function to return char pointer value from rig->caps
  fun rig_get_caps_cptr(rig_model : RigModelT, rig_caps : RigCapsCptrE) : LibC::Char*
  # Function to return int value from rig->caps Does not support > 32-bit rig_caps values
  fun rig_get_caps_int(rig_model : RigModelT, rig_caps : RigCapsIntE) : LibC::LongLong
  fun rig_get_chan_all(rig : Rig*, vfo : VfoT, chans : ChannelT*) : LibC::Int
  fun rig_get_chan_all_cb(rig : Rig*, vfo : VfoT, chan_cb : ChanCbT, x3 : Void*) : LibC::Int
  fun rig_get_channel(rig : Rig*, vfo : VfoT, chan : ChannelT*, read_only : LibC::Int) : LibC::Int
  fun rig_get_clock(rig : Rig*, year : LibC::Int*, month : LibC::Int*, day : LibC::Int*, hour : LibC::Int*, min : LibC::Int*, sec : LibC::Int*, msec : LibC::Double*, utc_offset : LibC::Int*) : LibC::Int
  fun rig_get_conf(rig : Rig*, token : TokenT, val : LibC::Char*) : LibC::Int
  fun rig_get_ctcss_sql(rig : Rig*, vfo : VfoT, tone : ToneT*) : LibC::Int
  fun rig_get_ctcss_tone(rig : Rig*, vfo : VfoT, tone : ToneT*) : LibC::Int
  fun rig_get_dcd(rig : Rig*, vfo : VfoT, dcd : DcdT*) : LibC::Int
  fun rig_get_dcs_code(rig : Rig*, vfo : VfoT, code : ToneT*) : LibC::Int
  fun rig_get_dcs_sql(rig : Rig*, vfo : VfoT, code : ToneT*) : LibC::Int
  fun rig_get_ext_func(rig : Rig*, vfo : VfoT, token : TokenT, status : LibC::Int*) : LibC::Int
  fun rig_get_ext_level(rig : Rig*, vfo : VfoT, token : TokenT, val : ValueT*) : LibC::Int
  fun rig_get_ext_parm(rig : Rig*, token : TokenT, val : ValueT*) : LibC::Int
  fun rig_get_freq(rig : Rig*, vfo : VfoT, freq : FreqT*) : LibC::Int
  fun rig_get_func(rig : Rig*, vfo : VfoT, func : SettingT, status : LibC::Int*) : LibC::Int
  # Function to return pointer to rig_* function
  fun rig_get_function_ptr(rig_model : RigModelT, rig_function : RigFunctionE) : Void*
  fun rig_get_info(rig : Rig*) : LibC::Char*
  fun rig_get_level(rig : Rig*, vfo : VfoT, level : SettingT, val : ValueT*) : LibC::Int
  fun rig_get_mem(rig : Rig*, vfo : VfoT, ch : LibC::Int*) : LibC::Int
  fun rig_get_mem_all(rig : Rig*, vfo : VfoT, chan : ChannelT*, x3 : Confparams*, x4 : ValueT*) : LibC::Int
  fun rig_get_mem_all_cb(rig : Rig*, vfo : VfoT, chan_cb : ChanCbT, parm_cb : ConfvalCbT, x4 : Void*) : LibC::Int
  fun rig_get_mode(rig : Rig*, vfo : VfoT, mode : RmodeT*, width : PbwidthT*) : LibC::Int
  fun rig_get_parm(rig : Rig*, parm : SettingT, val : ValueT*) : LibC::Int
  fun rig_get_powerstat(rig : Rig*, status : PowerstatT*) : LibC::Int
  fun rig_get_ptt(rig : Rig*, vfo : VfoT, ptt : PttT*) : LibC::Int
  fun rig_get_range(range_list : FreqRangeT*, freq : FreqT, mode : RmodeT) : FreqRangeT*
  fun rig_get_resolution(rig : Rig*, mode : RmodeT) : ShortfreqT
  fun rig_get_rig_info(rig : Rig*, response : LibC::Char*, max_response_len : LibC::Int) : LibC::Int
  fun rig_get_rit(rig : Rig*, vfo : VfoT, rit : ShortfreqT*) : LibC::Int
  fun rig_get_rptr_offs(rig : Rig*, vfo : VfoT, rptr_offs : ShortfreqT*) : LibC::Int
  fun rig_get_rptr_shift(rig : Rig*, vfo : VfoT, rptr_shift : RptrShiftT*) : LibC::Int
  fun rig_get_split_freq(rig : Rig*, vfo : VfoT, tx_freq : FreqT*) : LibC::Int
  fun rig_get_split_freq_mode(rig : Rig*, vfo : VfoT, tx_freq : FreqT*, tx_mode : RmodeT*, tx_width : PbwidthT*) : LibC::Int
  fun rig_get_split_mode(rig : Rig*, vfo : VfoT, tx_mode : RmodeT*, tx_width : PbwidthT*) : LibC::Int
  fun rig_get_split_vfo(x0 : Rig*, rx_vfo : VfoT, split : SplitT*, tx_vfo : VfoT*) : LibC::Int
  fun rig_get_trn(rig : Rig*, trn : LibC::Int*) : LibC::Int
  fun rig_get_ts(rig : Rig*, vfo : VfoT, ts : ShortfreqT*) : LibC::Int
  fun rig_get_twiddle(rig : Rig*, seconds : LibC::Int*) : LibC::Int
  fun rig_get_vfo(rig : Rig*, vfo : VfoT*) : LibC::Int
  fun rig_get_vfo_list(rig : Rig*, buf : LibC::Char*, buflen : LibC::Int) : LibC::Int
  fun rig_get_xit(rig : Rig*, vfo : VfoT, xit : ShortfreqT*) : LibC::Int
  fun rig_has_get_func(rig : Rig*, func : SettingT) : SettingT
  fun rig_has_get_level(rig : Rig*, level : SettingT) : SettingT
  fun rig_has_get_parm(rig : Rig*, parm : SettingT) : SettingT
  fun rig_has_scan(rig : Rig*, scan : ScanT) : ScanT
  fun rig_has_set_func(rig : Rig*, func : SettingT) : SettingT
  fun rig_has_set_level(rig : Rig*, level : SettingT) : SettingT
  fun rig_has_set_parm(rig : Rig*, parm : SettingT) : SettingT
  fun rig_has_vfo_op(rig : Rig*, op : VfoOpT) : VfoOpT
  fun rig_idx2setting(i : LibC::Int) : SettingT
  # Doxygen_Suppress
  fun rig_init(rig_model : RigModelT) : Rig*
  fun rig_levelagcstr(agc_string : LibC::Char*) : AgcLevelE
  fun rig_levelagcvalue(agc_value : LibC::Int) : AgcLevelE
  fun rig_license : LibC::Char*
  fun rig_list_foreach(cfunc : (RigCaps*, Void* -> LibC::Int), data : Void*) : LibC::Int
  fun rig_list_foreach_model(cfunc : (RigModelT, Void* -> LibC::Int), data : Void*) : LibC::Int
  fun rig_load_all_backends : LibC::Int
  fun rig_load_backend(be_name : LibC::Char*) : LibC::Int
  fun rig_lookup_mem_caps(rig : Rig*, ch : LibC::Int) : ChanT*
  fun rig_m_w2power = rig_mW2power(rig : Rig*, power : LibC::Float*, mwpower : LibC::UInt, freq : FreqT, mode : RmodeT) : LibC::Int
  fun rig_mem_count(rig : Rig*) : LibC::Int
  fun rig_need_debug(debug_level : RigDebugLevelE) : LibC::Int
  fun rig_no_restore_ai
  fun rig_open(rig : Rig*) : LibC::Int
  fun rig_parse_func(s : LibC::Char*) : SettingT
  fun rig_parse_level(s : LibC::Char*) : SettingT
  fun rig_parse_mode(s : LibC::Char*) : RmodeT
  fun rig_parse_mtype(s : LibC::Char*) : ChanTypeT
  fun rig_parse_parm(s : LibC::Char*) : SettingT
  fun rig_parse_rptr_shift(s : LibC::Char*) : RptrShiftT
  fun rig_parse_scan(s : LibC::Char*) : ScanT
  fun rig_parse_vfo(s : LibC::Char*) : VfoT
  fun rig_parse_vfo_op(s : LibC::Char*) : VfoOpT
  fun rig_passband_narrow(rig : Rig*, mode : RmodeT) : PbwidthT
  fun rig_passband_normal(rig : Rig*, mode : RmodeT) : PbwidthT
  fun rig_passband_wide(rig : Rig*, mode : RmodeT) : PbwidthT
  fun rig_power2m_w = rig_power2mW(rig : Rig*, mwpower : LibC::UInt*, power : LibC::Float, freq : FreqT, mode : RmodeT) : LibC::Int
  fun rig_probe(p : HamlibPortT*) : RigModelT
  fun rig_probe_all(p : HamlibPortT*, x1 : RigProbeFuncT, x2 : Void*) : LibC::Int
  fun rig_recv_dtmf(rig : Rig*, vfo : VfoT, digits : LibC::Char*, length : LibC::Int*) : LibC::Int
  fun rig_register(caps : RigCaps*) : LibC::Int
  fun rig_reset(rig : Rig*, reset : ResetT) : LibC::Int
  fun rig_scan(rig : Rig*, vfo : VfoT, scan : ScanT, ch : LibC::Int) : LibC::Int
  fun rig_send_dtmf(rig : Rig*, vfo : VfoT, digits : LibC::Char*) : LibC::Int
  fun rig_send_morse(rig : Rig*, vfo : VfoT, msg : LibC::Char*) : LibC::Int
  fun rig_send_voice_mem(rig : Rig*, vfo : VfoT, ch : LibC::Int) : LibC::Int
  fun rig_set_ant(rig : Rig*, vfo : VfoT, ant : AntT, option : ValueT) : LibC::Int
  fun rig_set_bank(rig : Rig*, vfo : VfoT, bank : LibC::Int) : LibC::Int
  fun rig_set_cache_timeout_ms(rig : Rig*, selection : HamlibCacheT, ms : LibC::Int) : LibC::Int
  fun rig_set_chan_all(rig : Rig*, vfo : VfoT, chans : ChannelT*) : LibC::Int
  fun rig_set_chan_all_cb(rig : Rig*, vfo : VfoT, chan_cb : ChanCbT, x3 : Void*) : LibC::Int
  fun rig_set_channel(rig : Rig*, vfo : VfoT, chan : ChannelT*) : LibC::Int
  fun rig_set_clock(rig : Rig*, year : LibC::Int, month : LibC::Int, day : LibC::Int, hour : LibC::Int, min : LibC::Int, sec : LibC::Int, msec : LibC::Double, utc_offset : LibC::Int) : LibC::Int
  fun rig_set_conf(rig : Rig*, token : TokenT, val : LibC::Char*) : LibC::Int
  fun rig_set_ctcss_sql(rig : Rig*, vfo : VfoT, tone : ToneT) : LibC::Int
  fun rig_set_ctcss_tone(rig : Rig*, vfo : VfoT, tone : ToneT) : LibC::Int
  fun rig_set_dcd_callback(x0 : Rig*, x1 : DcdCbT, x2 : Void*) : LibC::Int
  fun rig_set_dcs_code(rig : Rig*, vfo : VfoT, code : ToneT) : LibC::Int
  fun rig_set_dcs_sql(rig : Rig*, vfo : VfoT, code : ToneT) : LibC::Int
  fun rig_set_debug(debug_level : RigDebugLevelE)
  fun rig_set_debug_callback(cb : VprintfCbT, arg : Void*) : VprintfCbT
  fun rig_set_debug_file(stream : File*) : File*
  fun rig_set_debug_time_stamp(flag : LibC::Int)
  fun rig_set_ext_func(rig : Rig*, vfo : VfoT, token : TokenT, status : LibC::Int) : LibC::Int
  fun rig_set_ext_level(rig : Rig*, vfo : VfoT, token : TokenT, val : ValueT) : LibC::Int
  fun rig_set_ext_parm(rig : Rig*, token : TokenT, val : ValueT) : LibC::Int
  fun rig_set_freq(rig : Rig*, vfo : VfoT, freq : FreqT) : LibC::Int
  fun rig_set_freq_callback(x0 : Rig*, x1 : FreqCbT, x2 : Void*) : LibC::Int
  fun rig_set_func(rig : Rig*, vfo : VfoT, func : SettingT, status : LibC::Int) : LibC::Int
  fun rig_set_level(rig : Rig*, vfo : VfoT, level : SettingT, val : ValueT) : LibC::Int
  fun rig_set_mem(rig : Rig*, vfo : VfoT, ch : LibC::Int) : LibC::Int
  fun rig_set_mem_all(rig : Rig*, vfo : VfoT, chan : ChannelT*, x3 : Confparams*, x4 : ValueT*) : LibC::Int
  fun rig_set_mem_all_cb(rig : Rig*, vfo : VfoT, chan_cb : ChanCbT, parm_cb : ConfvalCbT, x4 : Void*) : LibC::Int
  fun rig_set_mode(rig : Rig*, vfo : VfoT, mode : RmodeT, width : PbwidthT) : LibC::Int
  fun rig_set_mode_callback(x0 : Rig*, x1 : ModeCbT, x2 : Void*) : LibC::Int
  fun rig_set_parm(rig : Rig*, parm : SettingT, val : ValueT) : LibC::Int
  fun rig_set_pltune_callback(x0 : Rig*, x1 : PltuneCbT, x2 : Void*) : LibC::Int
  fun rig_set_powerstat(rig : Rig*, status : PowerstatT) : LibC::Int
  fun rig_set_ptt(rig : Rig*, vfo : VfoT, ptt : PttT) : LibC::Int
  fun rig_set_ptt_callback(x0 : Rig*, x1 : PttCbT, x2 : Void*) : LibC::Int
  fun rig_set_rit(rig : Rig*, vfo : VfoT, rit : ShortfreqT) : LibC::Int
  fun rig_set_rptr_offs(rig : Rig*, vfo : VfoT, rptr_offs : ShortfreqT) : LibC::Int
  fun rig_set_rptr_shift(rig : Rig*, vfo : VfoT, rptr_shift : RptrShiftT) : LibC::Int
  fun rig_set_spectrum_callback(x0 : Rig*, x1 : SpectrumCbT, x2 : Void*) : LibC::Int
  fun rig_set_split_freq(rig : Rig*, vfo : VfoT, tx_freq : FreqT) : LibC::Int
  fun rig_set_split_freq_mode(rig : Rig*, vfo : VfoT, tx_freq : FreqT, tx_mode : RmodeT, tx_width : PbwidthT) : LibC::Int
  fun rig_set_split_mode(rig : Rig*, vfo : VfoT, tx_mode : RmodeT, tx_width : PbwidthT) : LibC::Int
  fun rig_set_split_vfo(x0 : Rig*, rx_vfo : VfoT, split : SplitT, tx_vfo : VfoT) : LibC::Int
  fun rig_set_trn(rig : Rig*, trn : LibC::Int) : LibC::Int
  fun rig_set_ts(rig : Rig*, vfo : VfoT, ts : ShortfreqT) : LibC::Int
  fun rig_set_twiddle(rig : Rig*, seconds : LibC::Int) : LibC::Int
  fun rig_set_uplink(rig : Rig*, val : LibC::Int) : LibC::Int
  fun rig_set_vfo(rig : Rig*, vfo : VfoT) : LibC::Int
  fun rig_set_vfo_callback(x0 : Rig*, x1 : VfoCbT, x2 : Void*) : LibC::Int
  fun rig_set_vfo_opt(rig : Rig*, status : LibC::Int) : LibC::Int
  fun rig_set_xit(rig : Rig*, vfo : VfoT, xit : ShortfreqT) : LibC::Int
  fun rig_setting2idx(s : SettingT) : LibC::Int
  fun rig_stop_morse(rig : Rig*, vfo : VfoT) : LibC::Int
  fun rig_stragclevel(level : AgcLevelE) : LibC::Char*
  fun rig_strfunc(x0 : SettingT) : LibC::Char*
  fun rig_strlevel(x0 : SettingT) : LibC::Char*
  fun rig_strmtype(mtype : ChanTypeT) : LibC::Char*
  fun rig_strparm(x0 : SettingT) : LibC::Char*
  fun rig_strptrshift(x0 : RptrShiftT) : LibC::Char*
  fun rig_strrmode(mode : RmodeT) : LibC::Char*
  fun rig_strrmodes(modes : RmodeT, buf : LibC::Char*, buflen : LibC::Int) : LibC::Int
  fun rig_strscan(scan : ScanT) : LibC::Char*
  fun rig_strspectrummode(mode : RigSpectrumModeE) : LibC::Char*
  fun rig_strstatus(status : RigStatusE) : LibC::Char*
  fun rig_strvfo(vfo : VfoT) : LibC::Char*
  fun rig_strvfop(op : VfoOpT) : LibC::Char*
  fun rig_token_foreach(rig : Rig*, cfunc : (Confparams*, Void* -> LibC::Int), data : Void*) : LibC::Int
  fun rig_token_lookup(rig : Rig*, name : LibC::Char*) : TokenT
  fun rig_unregister(rig_model : RigModelT) : LibC::Int
  fun rig_valueagclevel(agc_level : AgcLevelE) : ValueT
  fun rig_version : LibC::Char*
  fun rig_vfo_op(rig : Rig*, vfo : VfoT, op : VfoOpT) : LibC::Int
  fun rig_wait_morse(rig : Rig*, vfo : VfoT) : LibC::Int

  struct X_IoFile
    _flags : LibC::Int
    _io_read_ptr : LibC::Char*
    _io_read_end : LibC::Char*
    _io_read_base : LibC::Char*
    _io_write_base : LibC::Char*
    _io_write_ptr : LibC::Char*
    _io_write_end : LibC::Char*
    _io_buf_base : LibC::Char*
    _io_buf_end : LibC::Char*
    _io_save_base : LibC::Char*
    _io_backup_base : LibC::Char*
    _io_save_end : LibC::Char*
    _markers : X_IoMarker*
    _chain : X_IoFile*
    _fileno : LibC::Int
    _flags2 : LibC::Int
    _old_offset : X__OffT
    _cur_column : LibC::UShort
    _vtable_offset : LibC::Char
    _shortbuf : LibC::Char[1]
    _lock : X_IoLockT*
    _offset : X__Off64T
    _codecvt : X_IoCodecvt*
    _wide_data : X_IoWideData*
    _freeres_list : X_IoFile*
    _freeres_buf : Void*
    __pad5 : LibC::SizeT
    _mode : LibC::Int
    _unused2 : LibC::Char[20]
  end

  type File = X_IoFile
end
