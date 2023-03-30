(declare-const X String)
; richfind\x2Ecom\s+Host\x3A.*User-Agent\x3Athroughpjpoptwql\x2frlnj
(assert (str.in_re X (re.++ (str.to_re "richfind.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.* re.allchar) (str.to_re "User-Agent:throughpjpoptwql/rlnj\u{a}"))))
(check-sat)

(exit)
