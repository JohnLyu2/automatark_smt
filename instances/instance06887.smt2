(declare-const X String)
; /filename=[^\n]*\x2ejfif/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".jfif/i\u{a}"))))
; YAHOODesktopHost\x3aLOGHost\x3AtvshowticketsResultsFROM\x3A
(assert (not (str.in_re X (str.to_re "YAHOODesktopHost:LOGHost:tvshowticketsResultsFROM:\u{a}"))))
; <[iI][mM][gG]([^>]*[^/>])
(assert (str.in_re X (re.++ (str.to_re "<") (re.union (str.to_re "i") (str.to_re "I")) (re.union (str.to_re "m") (str.to_re "M")) (re.union (str.to_re "g") (str.to_re "G")) (str.to_re "\u{a}") (re.* (re.comp (str.to_re ">"))) (re.union (str.to_re "/") (str.to_re ">")))))
(check-sat)

(exit)
