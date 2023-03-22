(declare-const X String)
; /^[oz]/Ri
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "o") (str.to_re "z")) (str.to_re "/Ri\u{a}")))))
; /\/([0-9][0-9a-z]{2}|[0-9a-z][0-9][0-9a-z]|[0-9a-z]{2}[0-9])\.jar$/U
(assert (not (str.in_re X (re.++ (str.to_re "//") (re.union (re.++ (re.range "0" "9") ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "z")))) (re.++ (re.union (re.range "0" "9") (re.range "a" "z")) (re.range "0" "9") (re.union (re.range "0" "9") (re.range "a" "z"))) (re.++ ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "z"))) (re.range "0" "9"))) (str.to_re ".jar/U\u{a}")))))
; corep\x2Edmcast\x2Ecom[^\n\r]*Referer\x3a.*is[^\n\r]*KeyloggerExplorerfileserverSI\|Server\|www\x2Emyarmory\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "corep.dmcast.com") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Referer:") (re.* re.allchar) (str.to_re "is") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "KeyloggerExplorerfileserverSI|Server|\u{13}www.myarmory.com\u{a}")))))
(check-sat)
