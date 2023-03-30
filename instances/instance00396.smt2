(declare-const X String)
; A-311.*with\x3A\s+OnlineServer\x3aYeah\!User-Agent\x3a
(assert (not (str.in_re X (re.++ (str.to_re "A-311") (re.* re.allchar) (str.to_re "with:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "OnlineServer:Yeah!User-Agent:\u{a}")))))
(check-sat)

(exit)
