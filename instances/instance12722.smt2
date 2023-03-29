(declare-const X String)
; /^[0-9a-fA-F]+$/
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.+ (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to_re "/\u{a}")))))
; corep\x2Edmcast\x2Ecom[^\n\r]*Referer\x3a.*is[^\n\r]*KeyloggerExplorerfileserverSI\|Server\|www\x2Emyarmory\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "corep.dmcast.com") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Referer:") (re.* re.allchar) (str.to_re "is") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "KeyloggerExplorerfileserverSI|Server|\u{13}www.myarmory.com\u{a}")))))
; /\x2ef4b([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.f4b") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
(check-sat)

(exit)
