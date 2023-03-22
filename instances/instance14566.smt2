(declare-const X String)
; /\/load_module\.php\?user\=(n1|1|2|11)$/U
(assert (str.in_re X (re.++ (str.to_re "//load_module.php?user=") (re.union (str.to_re "n1") (str.to_re "1") (str.to_re "2") (str.to_re "11")) (str.to_re "/U\u{a}"))))
; Keylogger\w+Owner\x3A\dBetaWordixqshv\x2fqzccsServer\x00MyBYReferer\x3Awww\x2Eccnnlc\x2Ecom\x04\x00
(assert (not (str.in_re X (re.++ (str.to_re "Keylogger") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Owner:") (re.range "0" "9") (str.to_re "BetaWordixqshv/qzccsServer\u{0}MyBYReferer:www.ccnnlc.com\u{13}\u{4}\u{0}\u{a}")))))
(check-sat)
