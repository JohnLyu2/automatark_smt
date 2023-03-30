(declare-const X String)
; [a-z0-9]{1,11}
(assert (not (str.in_re X (re.++ ((_ re.loop 1 11) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "\u{a}")))))
; /filename=[^\n]*\x2evap/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".vap/i\u{a}"))))
; www\x2eproventactics\x2ecom\s+
(assert (str.in_re X (re.++ (str.to_re "www.proventactics.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}"))))
(check-sat)

(exit)
