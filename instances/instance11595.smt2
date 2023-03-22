(declare-const X String)
; TPSystemad\x2Esearchsquire\x2Ecomv\x2EHost\x3Ahotbar
(assert (str.in_re X (str.to_re "TPSystemad.searchsquire.comv.Host:hotbar\u{a}")))
; Spyware\s+ToolBar\s+User-Agent\x3AMM_RECO\x2EEXEToClientonAlert
(assert (str.in_re X (re.++ (str.to_re "Spyware") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ToolBar") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:MM_RECO.EXEToClientonAlert\u{a}"))))
(check-sat)
