(declare-const X String)
; ^\d(\.\d{1,2})?$
(assert (not (str.in_re X (re.++ (re.range "0" "9") (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to_re "\u{a}")))))
; trustyfiles\x2EcomBlade\x23\x23\x23\x23\.smx\?
(assert (str.in_re X (str.to_re "trustyfiles.comBlade####.smx?\u{a}")))
; ([0-1][0-9]|2[0-3]):[0-5][0-9]
(assert (str.in_re X (re.++ (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) (str.to_re ":") (re.range "0" "5") (re.range "0" "9") (str.to_re "\u{a}"))))
; NetControl\x2EServerNetTrackerSiLENTHost\x3A
(assert (str.in_re X (str.to_re "NetControl.Server\u{13}NetTrackerSiLENTHost:\u{a}")))
(check-sat)

(exit)
