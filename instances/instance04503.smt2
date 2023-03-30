(declare-const X String)
; UI2Host\x3ADesktopUser-Agent\x3a\x2Fnotifier\x2F
(assert (str.in_re X (str.to_re "UI2Host:DesktopUser-Agent:/notifier/\u{a}")))
(check-sat)

(exit)
