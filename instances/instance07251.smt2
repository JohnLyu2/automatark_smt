(declare-const X String)
; /^POST\x20\x2f[A-F\d]{42}\x20HTTP/
(assert (not (str.in_re X (re.++ (str.to_re "/POST /") ((_ re.loop 42 42) (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to_re " HTTP/\u{a}")))))
; Yeah\!User-Agent\x3a
(assert (str.in_re X (str.to_re "Yeah!User-Agent:\u{a}")))
; Googlelog\=\x7BIP\x3APG=SPEEDBAR
(assert (str.in_re X (str.to_re "Googlelog={IP:PG=SPEEDBAR\u{a}")))
(check-sat)
