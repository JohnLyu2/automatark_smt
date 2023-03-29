(declare-const X String)
; /^User\x2DAgent\x3A\s*Mozilla\x0d?$/smiH
(assert (str.in_re X (re.++ (str.to_re "/User-Agent:") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Mozilla") (re.opt (str.to_re "\u{d}")) (str.to_re "/smiH\u{a}"))))
(check-sat)

(exit)
