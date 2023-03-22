(declare-const X String)
; User-Agent\x3A\x2FrssMinutesansweras\x2Estarware\x2EcomFictionalHost\x3AHost\x3A
(assert (str.in_re X (str.to_re "User-Agent:/rssMinutesansweras.starware.comFictionalHost:Host:\u{a}")))
(check-sat)
