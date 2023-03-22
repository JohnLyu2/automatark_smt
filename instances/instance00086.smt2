(declare-const X String)
; Keylogger-Protoolbarplace\x2Ecom
(assert (str.in_re X (str.to_re "Keylogger-Protoolbarplace.com\u{a}")))
(check-sat)
