#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
;You can add or remove characters as you need
#Hotstring EndChars
endchars = {Space}`t
;here all the hotstrings
;Custom Macros archive

#Include %A_ScriptDir%\Sugarcube Essentials Macros.ahk
;html goodies
:*B0::#::
Gosub, Label
return
:*B0::.::
Gosub, Label
return


;all use
:*B0::<<::
Gosub, Label
return
;macros
:*B0::set::
Gosub, Label
return
:*B0::unset::
Gosub, Label
return
:*B0::append::
Gosub, Label
return
:*B0::replace::
Gosub, Label
return
:*B0::remove::
Gosub, Label
return
;interactive Macros
:*B0::link::
Gosub, Label
return
:*B0::lprep::
Gosub, Label
return
:*B0::lapp::
Gosub, Label
return
:*B0::lrep::
Gosub, Label
return
:*B0::button::
Gosub, Label
return
:*B0::checkbox::
Gosub, Label
return
:*B0::listbox::
Gosub, Label
return
:*B0::cycle::
Gosub, Label
return
:*B0::option::
Gosub, Label
return
:*B0::optionsfrom::
Gosub, Label
return
:*B0::numberbox::
Gosub, Label
return
:*B0::radiobutton::
Gosub, Label
return
:*B0::textarea::
Gosub, Label
return
:*B0::textbox::
Gosub, Label
return

;link Macros
:*B0::actions::
Gosub, Label
return
:*B0::back::
Gosub, Label
return
:*B0::choice::
Gosub, Label
return
:*B0::return::
Gosub, Label
return

;DOM Macros
:*B0::addclass::
Gosub, Label
return
:*B0::removeclass::
Gosub, Label
return
:*B0::toggleclass::
Gosub, Label
return
:*B0::copy::
Gosub, Label
return

;audio Macros
:*B0::cacheaudio::
Gosub, Label
return
:*B0::audio::
Gosub, Label
return
:*B0::createaudiogroup::
Gosub, Label
return
:*B0::createplaylist::
Gosub, Label
return
:*B0::track::
Gosub, Label
return
:*B0::masteraudio::
Gosub, Label
return

;micellanius Macros
:*B0::goto::
Gosub, Label
return
:*B0::done::
Gosub, Label
return
:*::stop::
<<stop>>
return
:*B0::timed::
Gosub, Label
return
:*B0::next::
Gosub, Label
return
:*B0::widget::
Gosub, Label
return
;Display Macros
:*B0::print::
Gosub, Label
return
:*B0::include::
Gosub, Label
return
;Does not need modifiers
:*::nobr::
<<nobr>><</nobr>>{Left 9}`n`n{Up}`t
return
;Does not need modifiers
:*::br::<br>
return
:*B0::silently::
Gosub, Label
return
:*B0::type::
Gosub, Label
return
;control Macros
:*B0::if::
Gosub, Label
return
:::else::
<<else>>
return
:*B0::elseif::
Gosub, Label
return
:*B0::switch::
Gosub, Label
return
:*B0::case::
Gosub, Label
return
:*B0::for::
Gosub, Label
return
:*B0::capture::
Gosub, Label
return
:*::break::<<break>>
return
:*::continue::<<continue>>
return
;Scripting Macros
:*::script::
<<script>><</script>>{Left 11}`n`n{Up}`t
return
:*B0::run::
Gosub, Label
return
Label:
#Include %A_ScriptDir%\SugarcubeCases.ahk
return


cursorPos:
split := StrSplit(text, "|")
SendInput % "{Left "StrLen(split[2])"}{bs}"
return
