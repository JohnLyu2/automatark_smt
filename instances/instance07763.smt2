(declare-const X String)
; Serverwjpropqmlpohj\x2floHost\x3AKEY=
(assert (str.in_re X (str.to_re "Serverwjpropqmlpohj/loHost:KEY=\u{a}")))
; /filename=[^\n]*\x2emht/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mht/i\u{a}"))))
(check-sat)

(exit)
