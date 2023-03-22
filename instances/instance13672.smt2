(declare-const X String)
; /User-Agent\:[^\x0a\x0d]+?Havij/H
(assert (str.in_re X (re.++ (str.to_re "/User-Agent:") (re.+ (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Havij/H\u{a}"))))
; Host\x3A\x252EResultsUser-Agent\x3A
(assert (str.in_re X (str.to_re "Host:%2EResultsUser-Agent:\u{a}")))
(check-sat)
