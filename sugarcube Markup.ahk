  ^u::
  clipsaved = %clipboard%
  Send ^x
  Sleep, 250
  clipboard = __%clipboard%__
  Send ^v
  clipboard = %clipsaved%
  return
  ^i::
  clipsaved = %clipboard%
  Send ^x
  Sleep, 250
  clipboard = //%clipboard%//
  Send ^v
  clipboard = %clipsaved%
  return
  ^b::
  clipsaved = %clipboard%
  Send ^x
  Sleep, 250
  clipboard = ''%clipboard%''
  Send ^v
  clipboard = %clipsaved%
  return
  ^-::
  clipsaved = %clipboard%
  Send ^x
  Sleep, 250
  clipboard = ==%clipboard%==
  Send ^v
  clipboard = %clipsaved%
  return
