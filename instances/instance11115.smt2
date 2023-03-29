(declare-const X String)
; ^[A-Z].*$
(assert (not (str.in_re X (re.++ (re.range "A" "Z") (re.* re.allchar) (str.to_re "\u{a}")))))
; ^\d(\d)?(\d)?$
(assert (not (str.in_re X (re.++ (re.range "0" "9") (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (str.to_re "\u{a}")))))
; corep\x2Edmcast\x2EcomOwner\x3A
(assert (not (str.in_re X (str.to_re "corep.dmcast.comOwner:\u{a}"))))
(check-sat)

(exit)
