(declare-const X String)
; /filename=[a-z]{5,8}\d{2,3}\.swf\x0d\x0a/Hm
(assert (str.in_re X (re.++ (str.to_re "/filename=") ((_ re.loop 5 8) (re.range "a" "z")) ((_ re.loop 2 3) (re.range "0" "9")) (str.to_re ".swf\u{d}\u{a}/Hm\u{a}"))))
; hirmvtg\x2fggqh\.kqhSurveillanceHost\x3A
(assert (not (str.in_re X (str.to_re "hirmvtg/ggqh.kqh\u{1b}Surveillance\u{13}Host:\u{a}"))))
; Hello\x2E\s+ovplrichfind\x2EcomCookie\x3a
(assert (not (str.in_re X (re.++ (str.to_re "Hello.") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ovplrichfind.comCookie:\u{a}")))))
(check-sat)
