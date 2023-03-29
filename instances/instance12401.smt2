(declare-const X String)
; are\d+Version\d+JMailBoxHostGENERAL_PARAM2
(assert (str.in_re X (re.++ (str.to_re "are") (re.+ (re.range "0" "9")) (str.to_re "Version") (re.+ (re.range "0" "9")) (str.to_re "JMailBoxHostGENERAL_PARAM2\u{a}"))))
; ^\d+\/?\d*$
(assert (not (str.in_re X (re.++ (re.+ (re.range "0" "9")) (re.opt (str.to_re "/")) (re.* (re.range "0" "9")) (str.to_re "\u{a}")))))
; User-Agent\x3aUser-Agent\x3AReport\x2EHost\x3Afhfksjzsfu\x2fahm\.uqs
(assert (not (str.in_re X (str.to_re "User-Agent:User-Agent:Report.Host:fhfksjzsfu/ahm.uqs\u{a}"))))
(check-sat)

(exit)
