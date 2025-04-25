proc reverse*(s: string): string =
  var l = 0
  var r = s.len - 1
  var s = s
  var t = ""
  while r >= l:
    echo s[l] & ':' & s[r]
    t = s[l]
    r = r - 1
    l = l + 1
  discard
