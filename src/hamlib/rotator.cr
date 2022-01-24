@[Link(ldflags: "`command -v pkg-config > /dev/null && pkg-config --libs hamlib 2> /dev/null|| printf %s '-lhamlib'`")]
lib Hamlib
  alias AzimuthT = LibC::Float
  alias ElevationT = LibC::Float
  alias RotModelT = LibC::Int
  alias RotResetT = LibC::Int
  # Rotator status flags
  enum RotStatusT
    # '' -- No status.
    RotStatusNone = 0
    # Rotator is busy, not accepting commands.
    RotStatusBusy = 1
    # Rotator is currently moving (direction type not specified).
    RotStatusMoving = 2
    # Azimuth rotator is currently moving (direction not specified).
    RotStatusMovingAz = 4
    # Azimuth rotator is currently moving left.
    RotStatusMovingLeft = 8
    # Azimuth rotator is currently moving right.
    RotStatusMovingRight = 16
    # Elevation rotator is currently moving (direction not specified).
    RotStatusMovingEl = 32
    # Elevation rotator is currently moving up.
    RotStatusMovingUp = 64
    # Elevation rotator is currently moving down.
    RotStatusMovingDown = 128
    # The elevation rotator has reached its limit to move up.
    RotStatusLimitUp = 256
    # The elevation rotator has reached its limit to move down.
    RotStatusLimitDown = 512
    # The azimuth rotator has reached its limit to move left (CCW).
    RotStatusLimitLeft = 1024
    # The azimuth rotator has reached its limit to move right (CW).
    RotStatusLimitRight = 2048
    # The elevation rotator has rotated up past 360 degrees.
    RotStatusOverlapUp = 4096
    # The elevation rotator has rotated down past 0 degrees.
    RotStatusOverlapDown = 8192
    # The azimuth rotator has rotated left (CCW) past 0 degrees.
    RotStatusOverlapLeft = 16384
    # The azimuth rotator has rotated right (CW) past 360 degrees.
    RotStatusOverlapRight = 65536
  end
  fun rot_check_backend(rot_model : RotModelT) : LibC::Int
  fun rot_cleanup(rot : Rot*) : LibC::Int
  fun rot_close(rot : Rot*) : LibC::Int
  fun rot_confparam_lookup(rot : Rot*, name : LibC::Char*) : Confparams*
  fun rot_ext_func_foreach(rot : Rot*, cfunc : (Rot*, Confparams*, Void* -> LibC::Int), data : Void*) : LibC::Int
  fun rot_ext_level_foreach(rot : Rot*, cfunc : (Rot*, Confparams*, Void* -> LibC::Int), data : Void*) : LibC::Int
  fun rot_ext_lookup(rot : Rot*, name : LibC::Char*) : Confparams*
  fun rot_ext_lookup_tok(rot : Rot*, token : TokenT) : Confparams*
  fun rot_ext_parm_foreach(rot : Rot*, cfunc : (Rot*, Confparams*, Void* -> LibC::Int), data : Void*) : LibC::Int
  fun rot_ext_token_lookup(rot : Rot*, name : LibC::Char*) : TokenT
  fun rot_get_caps(rot_model : RotModelT) : RotCaps*
  fun rot_get_conf(rot : Rot*, token : TokenT, val : LibC::Char*) : LibC::Int
  fun rot_get_ext_func(rig : Rot*, token : TokenT, status : LibC::Int*) : LibC::Int
  fun rot_get_ext_level(rig : Rot*, token : TokenT, val : ValueT*) : LibC::Int
  fun rot_get_ext_parm(rig : Rot*, token : TokenT, val : ValueT*) : LibC::Int
  fun rot_get_func(rot : Rot*, func : SettingT, status : LibC::Int*) : LibC::Int
  fun rot_get_info(rot : Rot*) : LibC::Char*
  fun rot_get_level(rig : Rot*, level : SettingT, val : ValueT*) : LibC::Int
  fun rot_get_parm(rig : Rot*, parm : SettingT, val : ValueT*) : LibC::Int
  fun rot_get_position(rot : Rot*, azimuth : AzimuthT*, elevation : ElevationT*) : LibC::Int
  fun rot_get_status(rot : Rot*, status : RotStatusT*) : LibC::Int
  fun rot_has_get_func(rot : Rot*, func : SettingT) : SettingT
  fun rot_has_get_level(rot : Rot*, level : SettingT) : SettingT
  fun rot_has_get_parm(rot : Rot*, parm : SettingT) : SettingT
  fun rot_has_set_func(rot : Rot*, func : SettingT) : SettingT
  fun rot_has_set_level(rot : Rot*, level : SettingT) : SettingT
  fun rot_has_set_parm(rot : Rot*, parm : SettingT) : SettingT
  # Doxygen_Suppress
  fun rot_init(rot_model : RotModelT) : Rot*
  fun rot_list_foreach(cfunc : (RotCaps*, Void* -> LibC::Int), data : Void*) : LibC::Int
  fun rot_load_all_backends : LibC::Int
  fun rot_load_backend(be_name : LibC::Char*) : LibC::Int
  fun rot_move(rot : Rot*, direction : LibC::Int, speed : LibC::Int) : LibC::Int
  fun rot_open(rot : Rot*) : LibC::Int
  fun rot_park(rot : Rot*) : LibC::Int
  fun rot_parse_func(s : LibC::Char*) : SettingT
  fun rot_parse_level(s : LibC::Char*) : SettingT
  fun rot_parse_parm(s : LibC::Char*) : SettingT
  fun rot_probe_all(p : HamlibPortT*) : RotModelT
  fun rot_register(caps : RotCaps*) : LibC::Int
  fun rot_reset(rot : Rot*, reset : RotResetT) : LibC::Int
  fun rot_set_conf(rot : Rot*, token : TokenT, val : LibC::Char*) : LibC::Int
  fun rot_set_ext_func(rig : Rot*, token : TokenT, status : LibC::Int) : LibC::Int
  fun rot_set_ext_level(rig : Rot*, token : TokenT, val : ValueT) : LibC::Int
  fun rot_set_ext_parm(rig : Rot*, token : TokenT, val : ValueT) : LibC::Int
  fun rot_set_func(rot : Rot*, func : SettingT, status : LibC::Int) : LibC::Int
  fun rot_set_level(rig : Rot*, level : SettingT, val : ValueT) : LibC::Int
  fun rot_set_parm(rig : Rot*, parm : SettingT, val : ValueT) : LibC::Int
  fun rot_set_position(rot : Rot*, azimuth : AzimuthT, elevation : ElevationT) : LibC::Int
  fun rot_stop(rot : Rot*) : LibC::Int
  fun rot_strfunc(x0 : SettingT) : LibC::Char*
  fun rot_strlevel(x0 : SettingT) : LibC::Char*
  fun rot_strparm(x0 : SettingT) : LibC::Char*
  fun rot_strstatus(x0 : RotStatusT) : LibC::Char*
  fun rot_token_foreach(rot : Rot*, cfunc : (Confparams*, Void* -> LibC::Int), data : Void*) : LibC::Int
  fun rot_token_lookup(rot : Rot*, name : LibC::Char*) : TokenT
  fun rot_unregister(rot_model : RotModelT) : LibC::Int

  struct RotCaps
    # Rotator model as defined in rotlist.h.
    rot_model : RotModelT
    # Model name, e.g. TT-360.
    model_name : LibC::Char*
    # Manufacturer, e.g. Tower Torquer.
    mfg_name : LibC::Char*
    # Driver version, typically in YYYYMMDD.x format.
    version : LibC::Char*
    # Copyright info (should be LGPL).
    copyright : LibC::Char*
    # Driver status.
    status : RigStatusE
    # Rotator type.
    rot_type : LibC::Int
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
    # Number of retries if command fails.
    retry : LibC::Int
    # List of get functions.
    has_get_func : SettingT
    # List of set functions.
    has_set_func : SettingT
    # List of get levels.
    has_get_level : SettingT
    # List of set levels.
    has_set_level : SettingT
    # List of get parameters.
    has_get_parm : SettingT
    # List of set parameters.
    has_set_parm : SettingT
    # Supported status flags.
    has_status : RotStatusT
    # level granularity (i.e. steps).
    level_gran : GranT[64]
    # parm granularity (i.e. steps).
    parm_gran : GranT[64]
    # Extension parameters list,
    extparms : Confparams*
    # Extension levels list,
    extlevels : Confparams*
    # Extension functions list,
    extfuncs : Confparams*
    # Extension token list.
    ext_tokens : LibC::Int*
    # Lower limit for azimuth (relative to North).
    min_az : AzimuthT
    # Upper limit for azimuth (relative to North).
    max_az : AzimuthT
    # Lower limit for elevation.
    min_el : ElevationT
    # Upper limit for elevation.
    max_el : ElevationT
    # Configuration parameters.
    cfgparams : Confparams*
    # Private data.
    priv : Void*
    # Pointer to backend implementation of ::rot_init().
    rot_init : (Rot* -> LibC::Int)
    # Pointer to backend implementation of ::rot_cleanup().
    rot_cleanup : (Rot* -> LibC::Int)
    # Pointer to backend implementation of ::rot_open().
    rot_open : (Rot* -> LibC::Int)
    # Pointer to backend implementation of ::rot_close().
    rot_close : (Rot* -> LibC::Int)
    # Pointer to backend implementation of ::rot_set_conf().
    set_conf : (Rot*, TokenT, LibC::Char* -> LibC::Int)
    # Pointer to backend implementation of ::rot_get_conf().
    get_conf : (Rot*, TokenT, LibC::Char* -> LibC::Int)
    # Pointer to backend implementation of ::rot_set_position().
    set_position : (Rot*, AzimuthT, ElevationT -> LibC::Int)
    # Pointer to backend implementation of ::rot_get_position().
    get_position : (Rot*, AzimuthT, ElevationT -> LibC::Int)
    # Pointer to backend implementation of ::rot_stop().
    stop : (Rot* -> LibC::Int)
    # Pointer to backend implementation of ::rot_park().
    park : (Rot* -> LibC::Int)
    # Pointer to backend implementation of ::rot_reset().
    reset : (Rot*, RotResetT -> LibC::Int)
    # Pointer to backend implementation of ::rot_move().
    move : (Rot*, LibC::Int, LibC::Int -> LibC::Int)
    # Pointer to backend implementation of ::rot_get_info().
    get_info : (Rot* -> LibC::Char*)
    # Pointer to backend implementation of ::rot_set_level().
    set_level : (Rot*, SettingT, ValueT -> LibC::Int)
    # Pointer to backend implementation of ::rot_get_level().
    get_level : (Rot*, SettingT, ValueT -> LibC::Int)
    # Pointer to backend implementation of ::rot_set_func().
    set_func : (Rot*, SettingT, LibC::Int -> LibC::Int)
    # Pointer to backend implementation of ::rot_get_func().
    get_func : (Rot*, SettingT, LibC::Int -> LibC::Int)
    # Pointer to backend implementation of ::rot_set_parm().
    set_parm : (Rot*, SettingT, ValueT -> LibC::Int)
    # Pointer to backend implementation of ::rot_get_parm().
    get_parm : (Rot*, SettingT, ValueT -> LibC::Int)
    # Pointer to backend implementation of ::rot_set_ext_level().
    set_ext_level : (Rot*, TokenT, ValueT -> LibC::Int)
    # Pointer to backend implementation of ::rot_get_ext_level().
    get_ext_level : (Rot*, TokenT, ValueT -> LibC::Int)
    # Pointer to backend implementation of ::rot_set_ext_func().
    set_ext_func : (Rot*, TokenT, LibC::Int -> LibC::Int)
    # Pointer to backend implementation of ::rot_get_ext_func().
    get_ext_func : (Rot*, TokenT, LibC::Int -> LibC::Int)
    # Pointer to backend implementation of ::rot_set_ext_parm().
    set_ext_parm : (Rot*, TokenT, ValueT -> LibC::Int)
    # Pointer to backend implementation of ::rot_get_ext_parm().
    get_ext_parm : (Rot*, TokenT, ValueT -> LibC::Int)
    # Pointer to backend implementation of ::rot_get_status().
    get_status : (Rot*, RotStatusT* -> LibC::Int)
    # Rotator model macro name.
    macro_name : LibC::Char*
  end

  struct RotState
    # Lower limit for azimuth (overridable).
    min_az : AzimuthT
    # Upper limit for azimuth (overridable).
    max_az : AzimuthT
    # Lower limit for elevation (overridable).
    min_el : ElevationT
    # Upper limit for elevation (overridable).
    max_el : ElevationT
    # South is zero degrees.
    south_zero : LibC::Int
    # Offset to be applied to azimuth.
    az_offset : AzimuthT
    # Offset to be applied to elevation.
    el_offset : ElevationT
    # List of get functions.
    has_get_func : SettingT
    # List of set functions.
    has_set_func : SettingT
    # List of get levels.
    has_get_level : SettingT
    # List of set levels.
    has_set_level : SettingT
    # List of get parameters.
    has_get_parm : SettingT
    # List of set parameters.
    has_set_parm : SettingT
    # Supported status flags.
    has_status : RotStatusT
    # Level granularity.
    level_gran : GranT[64]
    # Parameter granularity.
    parm_gran : GranT[64]
    # Rotator port (internal use).
    rotport : HamlibPortT
    # 2nd Rotator port (internal use).
    rotport2 : HamlibPortT
    # Comm port state, i.e. opened or closed.
    comm_state : LibC::Int
    # Pointer to private rotator state data.
    priv : Void*
    # Internal use by hamlib++ for event handling.
    obj : Void*
    # Current speed 1-100, to be used when no change to speed is requested.
    current_speed : LibC::Int
  end

  struct SRot
    # Rotator caps.
    caps : RotCaps*
    # Rotator state.
    state : RotState
  end

  type Rot = SRot
end
