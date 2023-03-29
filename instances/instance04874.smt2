(declare-const X String)
; com\x2Findex\.php\?tpid=.*pop\x2Epopuptoast\x2Ecom.*Host\x3A
(assert (not (str.in_re X (re.++ (str.to_re "com/index.php?tpid=") (re.* re.allchar) (str.to_re "pop.popuptoast.com") (re.* re.allchar) (str.to_re "Host:\u{a}")))))
(check-sat)

(exit)
