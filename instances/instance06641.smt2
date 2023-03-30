(declare-const X String)
; RootviewNetControl\x2EServerdata2\.activshopper\.com
(assert (str.in_re X (str.to_re "RootviewNetControl.Server\u{13}data2.activshopper.com\u{a}")))
; User-Agent\x3ASurveillancecomOnline
(assert (not (str.in_re X (str.to_re "User-Agent:Surveillance\u{13}comOnline\u{a}"))))
(check-sat)

(exit)
