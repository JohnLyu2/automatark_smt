(declare-const X String)
; \x2FrssaboutinformationHost\x3A\x2Fezsbu=DISKHost\x3Aad\x2Emokead\x2Ecom
(assert (str.in_re X (str.to_re "/rssaboutinformationHost:/ezsbu=DISKHost:ad.mokead.com\u{a}")))
; /\x2f\{\x23[^\x2f{}]+?\}(\.action)?\x2f?$/miU
(assert (not (str.in_re X (re.++ (str.to_re "//{#") (re.+ (re.union (str.to_re "/") (str.to_re "{") (str.to_re "}"))) (str.to_re "}") (re.opt (str.to_re ".action")) (re.opt (str.to_re "/")) (str.to_re "/miU\u{a}")))))
; from\s+\x2Fdss\x2Fcc\.2_0_0\.[^\n\r]*uploadServer
(assert (not (str.in_re X (re.++ (str.to_re "from") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/dss/cc.2_0_0.") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "uploadServer\u{a}")))))
; Agent\s+\x2Ftoolbar\x2Fico\x2F
(assert (str.in_re X (re.++ (str.to_re "Agent") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/toolbar/ico/\u{a}"))))
; SE\d{2}[ ]\d{4}[ ]\d{4}[ ]\d{4}[ ]\d{4}[ ]\d{4}|SE\d{22}
(assert (str.in_re X (re.++ (str.to_re "SE") (re.union (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re " ") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re " ") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re " ") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re " ") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re " ") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ ((_ re.loop 22 22) (re.range "0" "9")) (str.to_re "\u{a}"))))))
(check-sat)

(exit)
