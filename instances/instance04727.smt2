(declare-const X String)
; /\x3fsv\x3d\d{1,3}\x26tq\x3d/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/?sv=") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re "&tq=/smiU\u{a}")))))
(check-sat)

(exit)
