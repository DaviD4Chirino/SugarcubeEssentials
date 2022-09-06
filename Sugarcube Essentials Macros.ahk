;Meter macro set
:*B0::newmeter::
Gosub, Label
return
:*B0::colors::
Gosub, Label
return
:*B0::colors::
Gosub, Label
return
:*B0::sizing::
Gosub, Label
return
:*B0::animation::
Gosub, Label
return
:*B0::animation::
Gosub, Label
return
:*B0::label::
Gosub, Label
return
:*B0::showmeter::
Gosub, Label
return
:*B0::updatemeter::
Gosub, Label
return
;Click to proceed
:*B0::ctpbody::
Gosub, Label
return
:*B0::ctpn::
Gosub, Label
return
:*B0::ctph::
Gosub, Label
return
:*B0::ctpt::
Gosub, Label
return
:*B0::ctpadv::
Gosub, Label
return
:*B0::ctpback::
Gosub, Label
return
:*B0::ctpautohide::
Gosub, Label
return

;FadeIn macros
:*B0::fadein::
Gosub, Label
return
:*B0::fadeout::
Gosub, Label
return

;popover
:*B0::popover::
Gosub, Label
return

;notify
:*B0::notify::
Gosub, Label
return

;first macro
:*::first::
text = <<first>>\`n`t|`n<</first>>
Send % text
Gosub, cursorPos
return

:*::then::
text = <<then>>\`n`t
Send % text
Gosub, cursorPos
return

:*::finally::
text = <<finally>>\`n`t
Send % text
Gosub, cursorPos
return
