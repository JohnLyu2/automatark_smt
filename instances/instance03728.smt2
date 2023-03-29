(declare-const X String)
; e2give\.com\s+adfsgecoiwnf\x23\x23\x23\x23User-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "e2give.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "adfsgecoiwnf\u{1b}####User-Agent:\u{a}"))))
(check-sat)

(exit)
