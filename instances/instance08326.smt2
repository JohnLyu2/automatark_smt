(declare-const X String)
; www\x2Ezhongsou\x2Ecomclick\x2Edotcomtoolbar\x2Ecom
(assert (not (str.in_re X (str.to_re "www.zhongsou.comclick.dotcomtoolbar.com\u{a}"))))
; User-Agent\x3A\w+Owner\x3A\w+Wordixqshv\x2fqzccsServer\x00MyBYReferer\x3Awww\x2Eccnnlc\x2Ecom\x04\x00
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Owner:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Wordixqshv/qzccsServer\u{0}MyBYReferer:www.ccnnlc.com\u{13}\u{4}\u{0}\u{a}"))))
; /\/[a-f0-9]{32}\/[a-f0-9]{32}\x22/R
(assert (not (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "/") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "\u{22}/R\u{a}")))))
(check-sat)

(exit)
