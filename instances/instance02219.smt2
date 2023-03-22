(declare-const X String)
; Computer\x7D\x7BSysuptime\x3Awww\x2Eezula\x2EcomanswerServerHost\x3Aserveradfsgecoiwnf
(assert (str.in_re X (str.to_re "Computer}{Sysuptime:www.ezula.comanswerServerHost:serveradfsgecoiwnf\u{1b}\u{a}")))
(check-sat)
