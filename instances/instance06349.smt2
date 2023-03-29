(declare-const X String)
; Host\x3AInformationwww\x2Ezhongsou\x2EcomLitequick\x2Eqsrch\x2Ecom
(assert (str.in_re X (str.to_re "Host:Informationwww.zhongsou.comLitequick.qsrch.com\u{a}")))
; Subject\x3AKeyloggerSAHHost\x3ASurveillancenotification\x2Fdownload\x2Ftoolbar\x2Flocatorstoolbar
(assert (not (str.in_re X (str.to_re "Subject:KeyloggerSAHHost:Surveillance\u{13}notification\u{13}/download/toolbar/locatorstoolbar\u{a}"))))
(check-sat)

(exit)
