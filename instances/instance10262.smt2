(declare-const X String)
; from\x3AUser-Agent\x3AChildWebGuardian
(assert (not (str.in_re X (str.to_re "from:User-Agent:ChildWebGuardian\u{a}"))))
; SpywareinformationToolBarX-Mailer\x3aUser-Agent\x3AMM_RECO\x2EEXE
(assert (not (str.in_re X (str.to_re "SpywareinformationToolBarX-Mailer:\u{13}User-Agent:MM_RECO.EXE\u{a}"))))
; /filename=[^\n]*\x2epsd/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".psd/i\u{a}"))))
; /\/jlnp\.html$/U
(assert (str.in_re X (str.to_re "//jlnp.html/U\u{a}")))
(check-sat)

(exit)
