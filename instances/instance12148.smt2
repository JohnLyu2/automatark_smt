(declare-const X String)
; /^\x7b\x22[a-f0-9]{4}\x22\x3a\x22([a-f0-9]{32}|false)\x22,/smiP
(assert (str.in_re X (re.++ (str.to_re "/{\u{22}") ((_ re.loop 4 4) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "\u{22}:\u{22}") (re.union ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "false")) (str.to_re "\u{22},/smiP\u{a}"))))
; e(vi?)?
(assert (not (str.in_re X (re.++ (str.to_re "e") (re.opt (re.++ (str.to_re "v") (re.opt (str.to_re "i")))) (str.to_re "\u{a}")))))
(check-sat)
