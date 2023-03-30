(declare-const X String)
; /HTTP\/1.[01]\r\nUser\x2dAgent\x3a\x20[ -~]+\r\nHost\x3a\x20[a-z0-9\x2d\x2e]+\.info\r\n/
(assert (not (str.in_re X (re.++ (str.to_re "/HTTP/1") re.allchar (re.union (str.to_re "0") (str.to_re "1")) (str.to_re "\u{d}\u{a}User-Agent: ") (re.+ (re.range " " "~")) (str.to_re "\u{d}\u{a}Host: ") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-") (str.to_re "."))) (str.to_re ".info\u{d}\u{a}/\u{a}")))))
; ^.+\@.+\..+$
(assert (str.in_re X (re.++ (re.+ re.allchar) (str.to_re "@") (re.+ re.allchar) (str.to_re ".") (re.+ re.allchar) (str.to_re "\u{a}"))))
; www\x2e2-seek\x2ecom\x2fsearch\s+TPSystem
(assert (not (str.in_re X (re.++ (str.to_re "www.2-seek.com/search") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "TPSystem\u{a}")))))
; ^([1-9]{2}|[0-9][1-9]|[1-9][0-9])[0-9]{3}$
(assert (str.in_re X (re.++ (re.union ((_ re.loop 2 2) (re.range "1" "9")) (re.++ (re.range "0" "9") (re.range "1" "9")) (re.++ (re.range "1" "9") (re.range "0" "9"))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "\u{a}"))))
; [0-7]+
(assert (str.in_re X (re.++ (re.+ (re.range "0" "7")) (str.to_re "\u{a}"))))
(check-sat)

(exit)
