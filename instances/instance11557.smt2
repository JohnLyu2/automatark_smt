(declare-const X String)
; ^([a-zA-Z.\s']{1,50})$
(assert (not (str.in_re X (re.++ ((_ re.loop 1 50) (re.union (re.range "a" "z") (re.range "A" "Z") (str.to_re ".") (str.to_re "'") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}")))))
; Host\x3A\d+Litequick\x2Eqsrch\x2EcomaboutHost\x3AComputer\x7D\x7BSysuptime\x3A
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "Litequick.qsrch.comaboutHost:Computer}{Sysuptime:\u{a}"))))
; \x7D\x7BTrojan\x3A\w+Host\x3A\s\d\x2El
(assert (str.in_re X (re.++ (str.to_re "}{Trojan:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Host:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (re.range "0" "9") (str.to_re ".l\u{a}"))))
(check-sat)

(exit)
