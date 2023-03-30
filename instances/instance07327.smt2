(declare-const X String)
; Toolbar\s+wwwProbnymomspyo\x2fzowy
(assert (not (str.in_re X (re.++ (str.to_re "Toolbar") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "wwwProbnymomspyo/zowy\u{a}")))))
; /\x2epct([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.pct") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; hostie\s+freeIPaddrs\s+TPSystemHost\x3a\x7D\x7BUser\x3AAlert\x2Fcgi-bin\x2F
(assert (str.in_re X (re.++ (str.to_re "hostie") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "freeIPaddrs") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "TPSystemHost:}{User:Alert/cgi-bin/\u{a}"))))
(check-sat)

(exit)
