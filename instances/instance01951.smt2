(declare-const X String)
; Host\x3AAttachedengineact=Download
(assert (not (str.in_re X (str.to_re "Host:Attachedengineact=Download\u{a}"))))
(check-sat)

(exit)
