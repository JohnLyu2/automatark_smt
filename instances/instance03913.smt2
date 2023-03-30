(declare-const X String)
; -i%3fUser-Agent\x3Awww\x2eproventactics\x2ecom
(assert (str.in_re X (str.to_re "-i%3fUser-Agent:www.proventactics.com\u{a}")))
(check-sat)

(exit)
