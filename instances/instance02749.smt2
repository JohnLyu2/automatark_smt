(declare-const X String)
; /User-Agent\x3a[^\x0d\x0a]*Java\/1\./H
(assert (not (str.in_re X (re.++ (str.to_re "/User-Agent:") (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "Java/1./H\u{a}")))))
(check-sat)
