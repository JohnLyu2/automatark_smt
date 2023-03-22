(declare-const X String)
; www\x2Ezhongsou\x2Ecomclick\x2Edotcomtoolbar\x2Ecom
(assert (str.in_re X (str.to_re "www.zhongsou.comclick.dotcomtoolbar.com\u{a}")))
(check-sat)
