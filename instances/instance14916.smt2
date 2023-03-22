(declare-const X String)
; Host\x3aSoftwareHost\x3AjokeWEBCAM-Server\x3a
(assert (not (str.in_re X (str.to_re "Host:SoftwareHost:jokeWEBCAM-Server:\u{a}"))))
; \x2Fcommunicatortb[^\n\r]*\x2FGR.*Reportinfowhenu\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "/communicatortb") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "/GR") (re.* re.allchar) (str.to_re "Reportinfowhenu.com\u{13}\u{a}"))))
; /^number=[0-9A-F]{32}$/mC
(assert (str.in_re X (re.++ (str.to_re "/number=") ((_ re.loop 32 32) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to_re "/mC\u{a}"))))
(check-sat)
