(declare-const X String)
; /[0-9a-fA-F]{8}[a-z]{6}.php/
(assert (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 8 8) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) ((_ re.loop 6 6) (re.range "a" "z")) re.allchar (str.to_re "php/\u{a}"))))
; /\x2Ermf([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.rmf") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; (\_\_)(.+)(\_\_)
(assert (not (str.in_re X (re.++ (str.to_re "__") (re.+ re.allchar) (str.to_re "__\u{a}")))))
; Host\x3A.*www\x2e2-seek\x2ecom\x2fsearch
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.* re.allchar) (str.to_re "www.2-seek.com/search\u{a}")))))
(check-sat)

(exit)
