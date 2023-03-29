(declare-const X String)
; HWAEUser-Agent\x3ATestHost\x3Awww\x2Edotcomtoolbar\x2Ecom
(assert (str.in_re X (str.to_re "HWAEUser-Agent:TestHost:www.dotcomtoolbar.com\u{a}")))
(check-sat)

(exit)
