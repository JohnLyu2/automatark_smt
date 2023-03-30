(declare-const X String)
; /filename=[^\n]*\x2epdf/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pdf/i\u{a}"))))
; MyHost\x3AtoHost\x3AWinSessionwww\x2eurlblaze\x2enetResultHost\x3A
(assert (str.in_re X (str.to_re "MyHost:toHost:WinSessionwww.urlblaze.netResultHost:\u{a}")))
(check-sat)

(exit)
