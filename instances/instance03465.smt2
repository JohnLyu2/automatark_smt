(declare-const X String)
; Host\x3A00000www\x2Ezhongsou\x2Ecom
(assert (str.in_re X (str.to_re "Host:00000www.zhongsou.com\u{a}")))
(check-sat)
