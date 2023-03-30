(declare-const X String)
; www\.trackhits\.cc\s+wwwHost\x3aRobertVersionspyblini\x2Eini
(assert (not (str.in_re X (re.++ (str.to_re "www.trackhits.cc") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "wwwHost:RobertVersionspyblini.ini\u{a}")))))
(check-sat)

(exit)
