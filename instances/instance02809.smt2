(declare-const X String)
; Netspy\s\x3Aauto\x2Eisearch\x2EcomUser-Agent\x3Aaohobygi\x2fzwiwHWAEfhfksjzsfu\x2fahm\.uqs
(assert (str.in_re X (re.++ (str.to_re "Netspy") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re ":auto.isearch.comUser-Agent:aohobygi/zwiwHWAEfhfksjzsfu/ahm.uqs\u{a}"))))
(check-sat)

(exit)
