(declare-const X String)
; www\.iggsey\.com\sX-Mailer\x3aComputeron\x3Acom\x3E2\x2E41
(assert (not (str.in_re X (re.++ (str.to_re "www.iggsey.com") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "X-Mailer:\u{13}Computeron:com>2.41\u{a}")))))
; Host\x3Aact=Host\x3aUser-Agent\x3AUser-Agent\x3ALiteselect\x2FGet
(assert (str.in_re X (str.to_re "Host:act=Host:User-Agent:User-Agent:Liteselect/Get\u{a}")))
; ^[2-7]{1}[0-9]{3}$
(assert (str.in_re X (re.++ ((_ re.loop 1 1) (re.range "2" "7")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "\u{a}"))))
(check-sat)

(exit)
