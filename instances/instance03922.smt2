(declare-const X String)
; Host\x3AHost\x3asidebar\.activeshopper\.com
(assert (str.in_re X (str.to_re "Host:Host:sidebar.activeshopper.com\u{a}")))
(check-sat)

(exit)
