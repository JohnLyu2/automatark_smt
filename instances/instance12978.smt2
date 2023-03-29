(declare-const X String)
; Host\x3A1\-extreme\x2EbizX-Mailer\x3awww\x2Ewebcruiser\x2Ecc
(assert (str.in_re X (str.to_re "Host:1-extreme.bizX-Mailer:\u{13}www.webcruiser.cc\u{a}")))
; HWAE\s+\x2Fta\x2FNEWS\x2FGuptacharloomcompany\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "HWAE") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/ta/NEWS/Guptacharloomcompany.com\u{a}"))))
; Host\x3APortawww\.thecommunicator\.net
(assert (str.in_re X (str.to_re "Host:Portawww.thecommunicator.net\u{a}")))
; version\s+CodeguruBrowserwww\x2Esogou\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "version") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "CodeguruBrowserwww.sogou.com\u{a}")))))
(check-sat)

(exit)
