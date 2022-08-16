switch A_ThisHotkey {
  case ":*B0::#":
    text = <div id='%modifier%'> | </div>
    Send % text
    Gosub, cursorPos
  return
  case ":*B0::.":
    text = <div class='%modifier%|'> </div>
    Send % text
    Gosub, cursorPos
  return
}
