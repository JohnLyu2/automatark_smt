(declare-const X String)
; /^\/[a-f0-9]{32}\.php\?q=[a-f0-9]{32}$/U
(assert (not (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re ".php?q=") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "/U\u{a}")))))
; version\s+error\*\-\*WrongUser-Agent\x3Acom\x2Findex\.php\?tpid=
(assert (not (str.in_re X (re.++ (str.to_re "version") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "error*-*WrongUser-Agent:com/index.php?tpid=\u{a}")))))
; /\x2es3m([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.s3m") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; /filename=[^\n]*\x2epjpeg/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pjpeg/i\u{a}")))))
(check-sat)

(exit)
