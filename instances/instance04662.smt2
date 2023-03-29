(declare-const X String)
; tipHost\x3AGirafaClient\x0d\x0asubject=GhostVoice
(assert (not (str.in_re X (str.to_re "tipHost:GirafaClient\u{13}\u{d}\u{a}subject=GhostVoice\u{a}"))))
(check-sat)

(exit)
