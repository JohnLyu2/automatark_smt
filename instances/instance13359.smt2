(declare-const X String)
; ^([-]?[0-9])$|^([-]?[1][0-2])$
(assert (not (str.in_re X (re.union (re.++ (re.opt (str.to_re "-")) (re.range "0" "9")) (re.++ (str.to_re "\u{a}") (re.opt (str.to_re "-")) (str.to_re "1") (re.range "0" "2"))))))
; /\x2fpanda\x2f\x3fu\x3d[a-z0-9]{32}/U
(assert (not (str.in_re X (re.++ (str.to_re "//panda/?u=") ((_ re.loop 32 32) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "/U\u{a}")))))
(check-sat)

(exit)
