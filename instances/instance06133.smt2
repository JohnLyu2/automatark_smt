(declare-const X String)
; %3f\s+url=[^\n\r]*httpUser-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "%3f") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "url=") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "httpUser-Agent:\u{a}")))))
; X-Mailer\x3aReferer\x3Asponsor2\.ucmore\.com
(assert (not (str.in_re X (str.to_re "X-Mailer:\u{13}Referer:sponsor2.ucmore.com\u{a}"))))
; ('.*$|Rem((\t| ).*$|$)|"(.|"")*?")
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "'") (re.* re.allchar)) (re.++ (str.to_re "Rem") (re.union (str.to_re "\u{9}") (str.to_re " ")) (re.* re.allchar)) (re.++ (str.to_re "\u{22}") (re.* (re.union re.allchar (str.to_re "\u{22}\u{22}"))) (str.to_re "\u{22}"))) (str.to_re "\u{a}"))))
(check-sat)
