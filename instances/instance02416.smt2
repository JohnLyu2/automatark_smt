(declare-const X String)
; \x0D\x0ACurrent\x2EearthlinkSpyBuddy
(assert (not (str.in_re X (str.to_re "\u{d}\u{a}Current.earthlinkSpyBuddy\u{a}"))))
(check-sat)
