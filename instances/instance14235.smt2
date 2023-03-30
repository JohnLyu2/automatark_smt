(declare-const X String)
; GamespyAttachedIndyReferer\x3AToolbarCurrent\x3BCIA
(assert (str.in_re X (str.to_re "GamespyAttachedIndyReferer:ToolbarCurrent;CIA\u{a}")))
; /\x2fb\x2fshoe\x2f[0-9]{3,5}$/U
(assert (str.in_re X (re.++ (str.to_re "//b/shoe/") ((_ re.loop 3 5) (re.range "0" "9")) (str.to_re "/U\u{a}"))))
(check-sat)

(exit)
