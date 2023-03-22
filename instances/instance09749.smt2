(declare-const X String)
; /filename=[^\n]*\x2ebcl/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".bcl/i\u{a}"))))
; Host\x3a\s+ToolBarX-Mailer\x3aUser-Agent\x3AMM_RECO\x2EEXE
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ToolBarX-Mailer:\u{13}User-Agent:MM_RECO.EXE\u{a}")))))
; /filename=[^\n]*\x2ezip/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".zip/i\u{a}")))))
; A-311www3\.addfreestats\.comAttachedX-Mailer\x3A
(assert (str.in_re X (str.to_re "A-311www3.addfreestats.comAttachedX-Mailer:\u{13}\u{a}")))
; /filename=[^\n]*\x2eaom/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".aom/i\u{a}"))))
(check-sat)
