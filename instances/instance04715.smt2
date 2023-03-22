(declare-const X String)
; User-Agent\x3AUser-Agent\x3Awww\.take5bingo\.comUser-Agent\x3A
(assert (str.in_re X (str.to_re "User-Agent:User-Agent:www.take5bingo.com\u{1b}User-Agent:\u{a}")))
(check-sat)
