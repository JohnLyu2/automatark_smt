(declare-const X String)
; /User-Agent\x3a\x20[^\x0d\x0a]*?\x3bU\x3a[^\x0d\x0a]{1,68}\x3brv\x3a/H
(assert (not (str.in_re X (re.++ (str.to_re "/User-Agent: ") (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re ";U:") ((_ re.loop 1 68) (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re ";rv:/H\u{a}")))))
(check-sat)

(exit)
