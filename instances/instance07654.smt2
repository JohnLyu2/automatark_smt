(declare-const X String)
; /\/[a-zA-Z_-]+\.rtf$/U
(assert (not (str.in_re X (re.++ (str.to_re "//") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to_re "_") (str.to_re "-"))) (str.to_re ".rtf/U\u{a}")))))
; \x2Fcbn\x2F\s+Host\x3Abinde2give\.com
(assert (str.in_re X (re.++ (str.to_re "/cbn/") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:binde2give.com\u{a}"))))
; www\x2Elookster\x2Enetnotificationuuid=qisezhin\x2fiqor\.ym
(assert (str.in_re X (str.to_re "www.lookster.netnotification\u{13}uuid=qisezhin/iqor.ym\u{13}\u{a}")))
(check-sat)

(exit)
