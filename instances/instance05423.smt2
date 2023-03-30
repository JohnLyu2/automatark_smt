(declare-const X String)
; Host\x3A\d+Litequick\x2Eqsrch\x2EcomaboutHost\x3AComputer\x7D\x7BSysuptime\x3A
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "Litequick.qsrch.comaboutHost:Computer}{Sysuptime:\u{a}")))))
(check-sat)

(exit)
