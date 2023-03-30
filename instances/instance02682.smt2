(declare-const X String)
; myway\.com\s+SupervisorPalUser-Agent\x3ASearch
(assert (str.in_re X (re.++ (str.to_re "myway.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "SupervisorPalUser-Agent:Search\u{a}"))))
(check-sat)

(exit)
