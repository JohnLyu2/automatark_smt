(declare-const X String)
; Host\x3A\s+gpstool\x2eglobaladserver\x2ecomfriend_nickname=CIA-Notify-Tezt
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "gpstool.globaladserver.comfriend_nickname=CIA-Notify-Tezt\u{a}"))))
(check-sat)

(exit)
