(declare-const X String)
; Host\x3A\.exePass-OnHost\x3A\.exe\x2Ftoolbar\x2F
(assert (not (str.in_re X (str.to_re "Host:.exePass-OnHost:.exe/toolbar/\u{a}"))))
(check-sat)

(exit)
