(declare-const X String)
; Host\x3Aact=Host\x3aUser-Agent\x3AUser-Agent\x3ALiteselect\x2FGet
(assert (str.in_re X (str.to_re "Host:act=Host:User-Agent:User-Agent:Liteselect/Get\u{a}")))
; products\s+Host\x3ADAPCURLBlaze
(assert (str.in_re X (re.++ (str.to_re "products") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:DAPCURLBlaze\u{a}"))))
(check-sat)

(exit)
