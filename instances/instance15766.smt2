(declare-const X String)
; Host\x3A\d+Litequick\x2Eqsrch\x2EcomaboutHost\x3AComputer\x7D\x7BSysuptime\x3A
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "Litequick.qsrch.comaboutHost:Computer}{Sysuptime:\u{a}")))))
; ChildWebGuardian\d+Subject\x3A
(assert (not (str.in_re X (re.++ (str.to_re "ChildWebGuardian") (re.+ (re.range "0" "9")) (str.to_re "Subject:\u{a}")))))
; /\.php\?j=1&k=[0-9](i=[0-9])?$/U
(assert (str.in_re X (re.++ (str.to_re "/.php?j=1&k=") (re.range "0" "9") (re.opt (re.++ (str.to_re "i=") (re.range "0" "9"))) (str.to_re "/U\u{a}"))))
; /\x2erv([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.rv") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
(check-sat)

(exit)
