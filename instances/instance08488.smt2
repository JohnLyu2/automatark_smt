(declare-const X String)
; <!*[^<>]*>
(assert (str.in_re X (re.++ (str.to_re "<") (re.* (str.to_re "!")) (re.* (re.union (str.to_re "<") (str.to_re ">"))) (str.to_re ">\u{a}"))))
; log\=\x7BIP\x3AReferer\x3Awww\x2Emirarsearch\x2Ecom\x2Etxte2give\.comSpywareStrikeConnectedIPSubject\x3A
(assert (str.in_re X (str.to_re "log={IP:Referer:www.mirarsearch.com.txte2give.comSpywareStrikeConnectedIPSubject:\u{a}")))
; ^([\w-]+\.)*?[\w-]+@[\w-]+\.([\w-]+\.)*?[\w]+$
(assert (str.in_re X (re.++ (re.* (re.++ (re.+ (re.union (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "."))) (re.+ (re.union (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "@") (re.+ (re.union (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re ".") (re.* (re.++ (re.+ (re.union (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "."))) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{a}"))))
(check-sat)

(exit)
