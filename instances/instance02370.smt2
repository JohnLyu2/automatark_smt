(declare-const X String)
; /User-Agent\x3a\x20Agent\d{5,9}/Hi
(assert (str.in_re X (re.++ (str.to_re "/User-Agent: Agent") ((_ re.loop 5 9) (re.range "0" "9")) (str.to_re "/Hi\u{a}"))))
(check-sat)

(exit)
