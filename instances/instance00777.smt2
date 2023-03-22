(declare-const X String)
; YAHOODesktopHost\x3aLOGHost\x3AtvshowticketsResultsFROM\x3A
(assert (not (str.in_re X (str.to_re "YAHOODesktopHost:LOGHost:tvshowticketsResultsFROM:\u{a}"))))
(check-sat)
