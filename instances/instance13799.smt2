(declare-const X String)
; /filename=[^\n]*\x2etif/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".tif/i\u{a}")))))
; /gate\x2ephp\x3freg=[a-z]{10}/U
(assert (str.in_re X (re.++ (str.to_re "/gate.php?reg=") ((_ re.loop 10 10) (re.range "a" "z")) (str.to_re "/U\u{a}"))))
; DigExtNetBus\x5BStatic
(assert (not (str.in_re X (str.to_re "DigExtNetBus[Static\u{a}"))))
(check-sat)
