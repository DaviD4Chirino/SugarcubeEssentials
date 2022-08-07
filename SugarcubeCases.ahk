Input, modifier, V, %endchars%
RegexMatch(ErrorLevel, "EndKey:\K.*", EndKey)
modifier := StrReplace(modifier, ",", " ")
SendInput % "{bs " strlen(modifier)+strlen(A_ThisHotkey)-4 "}"
;modify the result cordingly
switch A_ThisHotkey {
  case ":*B0::<<":
    text = <<%modifier%>>|<</%modifier%>>
    Send % text
    Gosub, cursorPos
  return
  case ":*B0::set":
    text = <<set %modifier%>>
    Send % text
  return
  case ":*B0::unset":
      text = <<unset %modifier%>>
      Send % text
  return
  case ":*B0::lprep":
    text = <<linkprepend '%modifier%'t8n>>|<</linkprepend>>
    Send % text
    Gosub, cursorPos
  return
  case ":*B0::lapp":
      text = <<linkappend '%modifier%'t8n>>|<</linkappend>>
      Send % text
      Gosub, cursorPos
  return
  case ":*B0::lrep":
    text = <<linkreplace '%modifier%'t8n>>|<</linkreplace>>
    Send % text
    Gosub, cursorPos
  return
  case ":*B0::replace":
    text = <<replace '%modifier%'t8n>>|<</replace>>
    Send % text
    Gosub, cursorPos
  return
  case ":*B0::remove":
      text = <<remove '%modifier%'>>
      Send % text
  return
  case ":*B0::append":
    text = <<append '%modifier%'t8n>>|<</append>>
    Send % text
    Gosub, cursorPos
  return
  case ":*B0::button":
    text = <<button '%modifier%'>>|<</button>>
    Send % text
    Gosub, cursorPos
  return
  case ":*B0::checkbox":
    text = <label><<checkbox %modifier% false true>>|</label>
    Send % text
    Gosub, cursorPos
  return
  case ":*B0::listbox":
    text = <<listbox '%modifier%'>>|<</listbox>>
    Send % text
    Gosub, cursorPos
  return
  case ":*B0::numberbox":
    text = <<numberbox '%modifier%' 0|>>
    Send % text
    Gosub, cursorPos
  return
  case ":*B0::cycle":
    text = :<<cycle '%modifier%'>>`n|<</cycle>>
    Send % text
    Gosub, cursorPos
  return
  case ":*B0::option":
    text = :<<option %modifier%|>>
    Send % text
    Gosub, cursorPos
  return
  case ":*B0::optionsfrom":
    text = :<<optionfrom %modifier%|>>
    Send % text
    Gosub, cursorPos
  return

  case ":*B0::link":
    text = <<link '%modifier%'>>|<</link>>
    Send % text
    Gosub, cursorPos
  return
  case ":*B0::radiobutton":
    text = <label><<radiobutton '%modifier%'|>></label>
    Send % text
    Gosub, cursorPos
  return
  }
  switch A_ThisHotkey {
  case ":*B0::textarea":
      text = <<texarea '%modifier%' '|'>>
      Send % text
      Gosub, cursorPos
  return
  case ":*B0::textbox":
      text = <<texbox '%modifier%' '|'>>
      Send % text
      Gosub, cursorPos
  return
  ;Display Macros
  case ":*B0::print":
    text = <<= %modifier%>>
    Send % text
  return
  case ":*B0::include":
    text = <<include %modifier%>>
    Send % text
  return
  case ":*B0::silently":
    text = <<silently>>%modifier%|<</silently>>
    Send % text
    Gosub, cursorPos
  return
  case ":*B0::type":
    text =<<type %modifier%>>|<</type>>
    Send % text
    Gosub, cursorPos
  return
  ;control macros
  case ":*B0::if":
    text =<<if %modifier%>>`n`n|<</if>>
    Send % text
    Gosub, cursorPos
  return
  case ":*B0::elseif":
    text =<<elseif %modifier%|>>
    Send % text
    Gosub, cursorPos

  return
  case ":*B0::switch":
    text =<<switch %modifier%>>`n{Tab}|<<switch>>
    Send % text
    Gosub, cursorPos
  return
  case ":*B0::case":
    text =<<case %modifier%|>>
    Send % text
    Gosub, cursorPos
  return
  case ":*B0::for":
    text =<<for _i to 0; _i lt %modifier%.length; _i++>>|<</for>>
    Send % text
    Gosub, cursorPos
  return
  case ":*B0::capture":
    text =<<capture _i| %modifier%>>
    Send % text
    Gosub, cursorPos
  return
  ;Link Macros
  case ":*B0::actions":
    text =<<actons %modifier%|>>
    Send % text
    Gosub, cursorPos
  return
  case ":*B0::back":
    text =<<back '%modifier%'>>|
    Send % text
    Gosub, cursorPos
  return
  case ":*B0::choice":
    text =<<choice %modifier% '|'>>
    Send % text
    Gosub, cursorPos
  return
  case ":*B0::return":
    text =<<return '%modifier%'|>>
    Send % text
    Gosub, cursorPos
  return
}
;DOM Macros
switch A_ThisHotkey {
  case ":*B0::addclass":
    text =<<addclass '%modifier%' '|'>>
    Send % text
    Gosub, cursorPos
  return
  case ":*B0::removeclass":
    text =<<removelass '%modifier%' '|'>>
    Send % text
    Gosub, cursorPos
  return
  case ":*B0::toggleclass":
    text =<<toggleclass '%modifier%' '|'>>
    Send % text
    Gosub, cursorPos
  return
  case ":*B0::copy":
    text =<<copy '%modifier%'>>|
    Send % text
    Gosub, cursorPos
  return
}

;Audio Macros
switch A_ThisHotkey {
  case ":*B0::audio":
    text =<<audio '%modifier%' | >>
    Send % text
    Gosub, cursorPos
  return
  case ":*B0::cacheaudio":
    text =<<cacheaudio '%modifier%' '|' >>
    Send % text
    Gosub, cursorPos
  return
  case ":*B0::createaudiogroup":
    text =<<createaudiogroup '%modifier%'>>`n<</createaudiogroup>>
    Send % text
    Gosub, cursorPos
  return
  case ":*B0::createaudiogroup":
    text =<<createplaylist '%modifier%'>>`n<</createplaylist>>
    Send % text
    Gosub, cursorPos
  return
  case ":*B0::masteraudio":
    text =<<masteraudio %modifier%>>
    Send % text
    Gosub, cursorPos
  return
  case ":*B0::track":
    text =<<track '%modifier%'>>
    Send % text
    Gosub, cursorPos
  return
}
;micellanius Macros
switch A_ThisHotkey {
  case ":*B0::goto":
    text = <<goto '%modifier%'>>
    Send % text
  return
  case ":*B0::done":
    text = <<done>>'%modifier%'|<</done>>
    Send % text
    Gosub, cursorPos
  return
  case ":*B0::repeat":
    text = <<repeat %modifier% t8n>> | <</repeat>>
    Send % text
    Gosub, cursorPos
  return
  case ":*B0::timed":
    text = <<timed %modifier% t8n>> | <</timed>>
    Send % text
    Gosub, cursorPos
  return
  case ":*B0::next":
    text = <<next %modifier% t8n>> |
    Send % text
    Gosub, cursorPos
  return
  case ":*B0::widget":
    text = <<widget %modifier%>> `n| <</widget>>
    Send % text
    Gosub, cursorPos
  return
  ;Scripting Macros
  case ":*B0::run":
    text = <<run %modifier%|>>
    Send % text
    Gosub, cursorPos
  return
}
