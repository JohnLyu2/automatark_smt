(declare-const X String)
; Host\x3AX-Mailer\x3atoolbar\.wishbone\.com
(assert (str.in_re X (str.to_re "Host:X-Mailer:\u{13}toolbar.wishbone.com\u{a}")))
(check-sat)
