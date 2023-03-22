(declare-const X String)
; User-Agent\x3AUser-Agent\x3Awww\.take5bingo\.comUser-Agent\x3A
(assert (not (str.in_re X (str.to_re "User-Agent:User-Agent:www.take5bingo.com\u{1b}User-Agent:\u{a}"))))
; Host\x3A\s+lnzzlnbk\x2fpkrm\.fin
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "lnzzlnbk/pkrm.fin\u{a}")))))
(check-sat)
