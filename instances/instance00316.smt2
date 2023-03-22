(declare-const X String)
; \x22Thewebsearch\.getmirar\.com
(assert (str.in_re X (str.to_re "\u{22}Thewebsearch.getmirar.com\u{a}")))
(check-sat)
