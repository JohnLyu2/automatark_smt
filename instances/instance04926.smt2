(declare-const X String)
; GamespyAttachedIndyReferer\x3AToolbarCurrent\x3BCIA
(assert (not (str.in_re X (str.to_re "GamespyAttachedIndyReferer:ToolbarCurrent;CIA\u{a}"))))
(check-sat)

(exit)
