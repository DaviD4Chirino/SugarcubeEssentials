switch A_ThisHotkey {
  case ":*B0:.startMeter":
    text := "<<run setup.startMeter('" modifier "'|)>>`n<<showmeter '" modifier "'>>"
    Send % text
    Gosub, cursorPos
  return
  case ":*B0:.addMission":
    text := "<<run setup.addMission(" modifier "," extras[2]  ")>>"
    Send % text
  return
  case ":*B0:.setMission":
    text := "<<run setup.setMission('" modifier "|')>>"
    Send % text
    Gosub, cursorPos
  return
  case ":*B0:.addStep":
    text := "<<run setup.addStep('" modifier "','" extras[2] "', '" extras[3] "' |)>>"
    Send % text
    Gosub, cursorPos
  return
  case ":*B0:.setStep":
    text := "<<run setup.setStep('" modifier "','" extras[2] "')>>"
    Send % text
  return
  case ":*B0:.location":
    text := "<<run setup.addLocation('" modifier "','" extras[2] "','" extras[3] "')>>"
    Send % text
  return

}
