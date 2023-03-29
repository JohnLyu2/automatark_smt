(declare-const X String)
; Hello\x2E\s+ovpl\s+Host\x3AWeHost\x3awww\x2Ewowokay\x2Ecom/wowokaybar\x2Ephp
(assert (str.in_re X (re.++ (str.to_re "Hello.") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ovpl") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:WeHost:www.wowokay.com/wowokaybar.php\u{a}"))))
(check-sat)

(exit)
