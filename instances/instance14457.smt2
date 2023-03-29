(declare-const X String)
; LoginHost\x3a\x2Ffriendship\x2Femail_thank_you\?
(assert (str.in_re X (str.to_re "LoginHost:/friendship/email_thank_you?\u{a}")))
; metaresults\.copernic\.comServer\x00
(assert (not (str.in_re X (str.to_re "metaresults.copernic.comServer\u{0}\u{a}"))))
; /\x2eqt([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.qt") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; \x22StarLogger\x22User-Agent\x3AJMailUser-Agent\x3A
(assert (not (str.in_re X (str.to_re "\u{22}StarLogger\u{22}User-Agent:JMailUser-Agent:\u{a}"))))
(check-sat)

(exit)
