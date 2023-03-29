(declare-const X String)
; sbRedirectionsHost\x3AHost\x3AUser-Agent\x3Ahotbar%3fwww\x2Einternetadvertisingcompany\x2Ebiz
(assert (str.in_re X (str.to_re "sbRedirections\u{1b}Host:Host:User-Agent:hotbar%3fwww.internetadvertisingcompany.biz\u{a}")))
; LOG\s+spyblini\x2EiniUpdateUser-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "LOG") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "spyblini.iniUpdateUser-Agent:\u{a}"))))
; Toolbarverpop\x2Epopuptoast\x2Ecomtvshowticketscount\x2Eyok\x2Ecom
(assert (str.in_re X (str.to_re "Toolbarverpop.popuptoast.comtvshowticketscount.yok.com\u{a}")))
(check-sat)

(exit)
