(declare-const X String)
; /filename=[^\n]*\x2edae/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".dae/i\u{a}")))))
; User-Agent\x3A\d+Desktop\sIDENTIFY666User-Agent\x3A\x5BStatic
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "Desktop") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "IDENTIFY666User-Agent:[Static\u{a}"))))
; areHost\x3Ae2give\.comHost\x3aX-Mailer\x3AsportsHost\x3AToolbar
(assert (str.in_re X (str.to_re "areHost:e2give.comHost:X-Mailer:\u{13}sportsHost:Toolbar\u{a}")))
; t=ProtoUser-Agent\x3Aquick\x2Eqsrch\x2Ecom
(assert (str.in_re X (str.to_re "t=ProtoUser-Agent:quick.qsrch.com\u{a}")))
; (a|A)
(assert (str.in_re X (re.++ (re.union (str.to_re "a") (str.to_re "A")) (str.to_re "\u{a}"))))
(check-sat)

(exit)
