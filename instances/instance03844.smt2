(declare-const X String)
; \x7D\x7BPassword\x3ADesktopDownloadfowclxccdxn\x2fuxwn\.ddy
(assert (str.in_re X (str.to_re "}{Password:\u{1b}DesktopDownloadfowclxccdxn/uxwn.ddy\u{a}")))
(check-sat)
