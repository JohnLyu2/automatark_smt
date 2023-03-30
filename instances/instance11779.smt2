(declare-const X String)
; PASSW=\w+www2\x2einstantbuzz\x2ecom\s+Online
(assert (not (str.in_re X (re.++ (str.to_re "PASSW=") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "www2.instantbuzz.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Online\u{a}")))))
; /[a-z\d\x2f\x2b\x3d]{100}/AGPi
(assert (not (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 100 100) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "/") (str.to_re "+") (str.to_re "="))) (str.to_re "/AGPi\u{a}")))))
; /\x2exspf([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.xspf") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; protocolhttp\x3A\x2F\x2Fwww\.searchinweb\.com\x2Fsearch\.php\?said=bar
(assert (not (str.in_re X (str.to_re "protocolhttp://www.searchinweb.com/search.php?said=bar\u{a}"))))
(check-sat)

(exit)
