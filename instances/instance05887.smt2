(declare-const X String)
; information\s+User-Agent\x3AMM_RECO\x2EEXE
(assert (str.in_re X (re.++ (str.to_re "information") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:MM_RECO.EXE\u{a}"))))
(check-sat)

(exit)
