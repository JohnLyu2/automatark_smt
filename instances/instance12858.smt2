(declare-const X String)
; searchnugget\s+User-Agent\x3A\s+Downloadfowclxccdxn\x2fuxwn\.ddy
(assert (not (str.in_re X (re.++ (str.to_re "searchnugget\u{13}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Downloadfowclxccdxn/uxwn.ddy\u{a}")))))
; /\x2ef4b([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.f4b") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; Host\x3a\dATTENTION\x3A.*User-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.range "0" "9") (str.to_re "ATTENTION:") (re.* re.allchar) (str.to_re "User-Agent:\u{a}"))))
; /filename=[^\n]*\x2empg/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mpg/i\u{a}")))))
(check-sat)

(exit)
