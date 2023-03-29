(declare-const X String)
; searchnugget\s+User-Agent\x3A\s+Downloadfowclxccdxn\x2fuxwn\.ddy
(assert (str.in_re X (re.++ (str.to_re "searchnugget\u{13}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Downloadfowclxccdxn/uxwn.ddy\u{a}"))))
; Host\x3ADesktopcargo=report\<\x2Ftitle\>Host\x3a\.fcgiupgrade\x2Eqsrch\x2Einfo
(assert (not (str.in_re X (str.to_re "Host:Desktopcargo=report</title>Host:.fcgiupgrade.qsrch.info\u{a}"))))
; ^0{0,1}[1-9]{1}[0-9]{2}[\s]{0,1}[\-]{0,1}[\s]{0,1}[1-9]{1}[0-9]{6}$
(assert (not (str.in_re X (re.++ (re.opt (str.to_re "0")) ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (str.to_re "-")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 6 6) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)

(exit)
