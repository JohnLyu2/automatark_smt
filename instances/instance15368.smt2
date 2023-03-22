(declare-const X String)
; www\x2Ewebcruiser\x2Eccgot
(assert (str.in_re X (str.to_re "www.webcruiser.ccgot\u{a}")))
; \x0D\x0ACurrent\x2EearthlinkSpyBuddy
(assert (str.in_re X (str.to_re "\u{d}\u{a}Current.earthlinkSpyBuddy\u{a}")))
(check-sat)
