(declare-const X String)
; SpywareinformationToolBarX-Mailer\x3aUser-Agent\x3AMM_RECO\x2EEXE
(assert (not (str.in_re X (str.to_re "SpywareinformationToolBarX-Mailer:\u{13}User-Agent:MM_RECO.EXE\u{a}"))))
(check-sat)

(exit)
