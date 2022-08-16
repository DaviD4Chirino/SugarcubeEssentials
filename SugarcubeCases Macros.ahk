switch A_ThisHotkey {
  case ":*B0::ctpbody":
    text = <<ctp '%modifier%'t8n br>><<set _ctp to CTP.getCTP('%modifier%') >>`n`t|`n<</ctp>>
    Send % text
    Gosub, cursorPos
  return
  case ":*B0::ctpn":
    text = <<ctpNext %modifier%>>`n`t|
    Send % text
    Gosub, cursorPos
  return
  case ":*B0::ctph":
    text = <<ctpHead %modifier%>>`n`t|
    Send % text
    Gosub, cursorPos
  return
  case ":*B0::ctpt":
    text = <<ctpTail %modifier%>>`n`t|
    Send % text
    Gosub, cursorPos
  return
  case ":*B0::ctpadv":
    text = <<ctpAdvance '%modifier%'>>`n`t|
    Send % text
    Gosub, cursorPos
  return
  case ":*B0::ctpback":
    text = <<ctpBack '%modifier%'>>`t`n|
    Send % text
    Gosub, cursorPos
  return
  case ":*B0::ctpautohide":
    text =<<ctpTail>>`n`t<<if _ctp.log.index lt _ctp.stack.length - 1>>`n`t|`n`t<</if>>
    Send % text
    Gosub, cursorPos
  return
}
;for the fadein
switch A_ThisHotkey {
  case ":*B0::fadein":
    text =<<fadein %modifier%>>`n`t|`n`t<</fadein>>
    Send % text
    Gosub, cursorPos
  return

  case ":*B0::fadeout":
    text =<<fadeout %modifier%>>`n`t|`n`t<</fadeout>>
    Send % text
    Gosub, cursorPos
  return
  ;popover
  case ":*B0::popover":
    text =<<popover %modifier%>>`n`t|`n`t<</popover>>
    Send % text
    Gosub, cursorPos
  return
  ;notify
  case ":*B0::notify":
    text =<<notify>>%modifier%<</notify>>
    Send % text
    Gosub, cursorPos
  return
}
