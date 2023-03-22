(declare-const X String)
; MyHost\x3AtoHost\x3AWinSessionwww\x2eurlblaze\x2enetResultHost\x3A
(assert (not (str.in_re X (str.to_re "MyHost:toHost:WinSessionwww.urlblaze.netResultHost:\u{a}"))))
(check-sat)
