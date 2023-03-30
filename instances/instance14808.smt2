(declare-const X String)
; /\x2emkv([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.mkv") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; Host\x3AUser-Agent\x3Awww\.raxsearch\.com
(assert (str.in_re X (str.to_re "Host:User-Agent:www.raxsearch.com\u{a}")))
(check-sat)

(exit)
