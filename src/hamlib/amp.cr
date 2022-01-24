@[Link(ldflags: "`command -v pkg-config > /dev/null && pkg-config --libs hamlib 2> /dev/null|| printf %s '-lhamlib'`")]
lib Hamlib
  alias AmpModelT = LibC::Int
  # Doxygen_Suppress
  enum AmpResetT
    AmpResetMem   = 0
    AmpResetFault = 1
    AmpResetAmp   = 2
  end
  fun amp_check_backend(amp_model : AmpModelT) : LibC::Int
  fun amp_cleanup(amp : Amp*) : LibC::Int
  fun amp_close(amp : Amp*) : LibC::Int
  fun amp_confparam_lookup(amp : Amp*, name : LibC::Char*) : Confparams*
  fun amp_ext_lookup(amp : Amp*, name : LibC::Char*) : Confparams*
  fun amp_get_caps(amp_model : AmpModelT) : AmpCaps*
  fun amp_get_conf(amp : Amp*, token : TokenT, val : LibC::Char*) : LibC::Int
  fun amp_get_ext_level(amp : Amp*, token : TokenT, val : ValueT*) : LibC::Int
  fun amp_get_freq(amp : Amp*, freq : FreqT*) : LibC::Int
  fun amp_get_info(amp : Amp*) : LibC::Char*
  fun amp_get_level(amp : Amp*, level : SettingT, val : ValueT*) : LibC::Int
  fun amp_get_powerstat(amp : Amp*, status : PowerstatT*) : LibC::Int
  fun amp_has_get_level(amp : Amp*, level : SettingT) : SettingT
  # Doxygen_Suppress
  fun amp_init(amp_model : AmpModelT) : Amp*
  fun amp_list_foreach(cfunc : (AmpCaps*, Void* -> LibC::Int), data : Void*) : LibC::Int
  fun amp_load_all_backends : LibC::Int
  fun amp_load_backend(be_name : LibC::Char*) : LibC::Int
  fun amp_open(amp : Amp*) : LibC::Int
  fun amp_parse_level(s : LibC::Char*) : SettingT
  fun amp_probe_all(p : HamlibPortT*) : AmpModelT
  fun amp_register(caps : AmpCaps*) : LibC::Int
  fun amp_reset(amp : Amp*, reset : AmpResetT) : LibC::Int
  fun amp_set_conf(amp : Amp*, token : TokenT, val : LibC::Char*) : LibC::Int
  fun amp_set_freq(amp : Amp*, freq : FreqT) : LibC::Int
  fun amp_set_powerstat(amp : Amp*, status : PowerstatT) : LibC::Int
  fun amp_token_foreach(amp : Amp*, cfunc : (Confparams*, Void* -> LibC::Int), data : Void*) : LibC::Int
  fun amp_token_lookup(amp : Amp*, name : LibC::Char*) : TokenT
  fun amp_unregister(amp_model : AmpModelT) : LibC::Int

  struct Amp
    # Amplifier caps.
    caps : AmpCaps*
    # Amplifier state.
    state : AmpState
  end

  struct AmpCaps
    # Amplifier model as defined in amplist.h.
    amp_model : AmpModelT
    # Model name, e.g. MM-5k.
    model_name : LibC::Char*
    # Manufacturer, e.g. Moonbeam.
    mfg_name : LibC::Char*
    # Driver version, typically in YYYYMMDD.x format.
    version : LibC::Char*
    # Copyright info (should be LGPL).
    copyright : LibC::Char*
    # Driver status.
    status : RigStatusE
    # Amplifier type.
    amp_type : LibC::Int
    # Type of communication port (serial, ethernet, etc.).
    port_type : RigPortE
    # Minimal serial speed.
    serial_rate_min : LibC::Int
    # Maximal serial speed.
    serial_rate_max : LibC::Int
    # Number of data bits.
    serial_data_bits : LibC::Int
    # Number of stop bits.
    serial_stop_bits : LibC::Int
    # Parity.
    serial_parity : SerialParityE
    # Handshake.
    serial_handshake : SerialHandshakeE
    # Write delay.
    write_delay : LibC::Int
    # Post-write delay.
    post_write_delay : LibC::Int
    # Timeout.
    timeout : LibC::Int
    # Number of retries if a command fails.
    retry : LibC::Int
    # Configuration parameters.
    cfgparams : Confparams*
    # Private data.
    priv : Void*
    # Model macro name.
    amp_model_macro_name : LibC::Char*
    # List of get levels.
    has_get_level : SettingT
    # List of set levels.
    has_set_level : SettingT
    # Level granularity.
    level_gran : GranT[64]
    # Parameter granularity.
    parm_gran : GranT[64]
    # Pointer to backend implementation of ::amp_init().
    amp_init : (Amp* -> LibC::Int)
    # Pointer to backend implementation of ::amp_cleanup().
    amp_cleanup : (Amp* -> LibC::Int)
    # Pointer to backend implementation of ::amp_open().
    amp_open : (Amp* -> LibC::Int)
    # Pointer to backend implementation of ::amp_close().
    amp_close : (Amp* -> LibC::Int)
    # Pointer to backend implementation of ::amp_set_freq().
    set_freq : (Amp*, FreqT -> LibC::Int)
    # Pointer to backend implementation of ::amp_get_freq().
    get_freq : (Amp*, FreqT -> LibC::Int)
    # Pointer to backend implementation of ::amp_set_conf().
    set_conf : (Amp*, TokenT, LibC::Char* -> LibC::Int)
    # Pointer to backend implementation of ::amp_get_conf().
    get_conf : (Amp*, TokenT, LibC::Char* -> LibC::Int)
    # Pointer to backend implementation of ::amp_reset().
    reset : (Amp*, AmpResetT -> LibC::Int)
    # Pointer to backend implementation of ::amp_get_level().
    get_level : (Amp*, SettingT, ValueT* -> LibC::Int)
    # Pointer to backend implementation of ::amp_get_ext_level().
    get_ext_level : (Amp*, TokenT, ValueT* -> LibC::Int)
    # Pointer to backend implementation of ::amp_set_powerstat().
    set_powerstat : (Amp*, PowerstatT -> LibC::Int)
    # Pointer to backend implementation of ::amp_get_powerstat().
    get_powerstat : (Amp*, PowerstatT -> LibC::Int)
    # Pointer to backend implementation of ::amp_get_info().
    get_info : (Amp* -> LibC::Char*)
    # Doxygen_Suppress
    levels : SettingT
    ext_levels : LibC::UInt
    # Extension levels list.
    extlevels : Confparams*
    # Extension parameters list.
    extparms : Confparams*
    # Amplifier model macro name.
    macro_name : LibC::Char*
  end

  struct AmpState
    # Amplifier port (internal use).
    ampport : HamlibPortT
    # Comm port state, opened/closed.
    comm_state : LibC::Int
    # Pointer to private amplifier state data.
    priv : Void*
    # Internal use by hamlib++ for event handling.
    obj : Void*
    # List of get levels.
    has_get_level : SettingT
    # Level granularity.
    level_gran : GranT[64]
    # Parameter granularity.
    parm_gran : GranT[64]
  end

  type Amp = Amp
end
