(declare-const X String)
; Informationsearchnuggetspastb\x2Efreeprod\x2EcomOnlineWeb\.fcgi
(assert (str.in_re X (str.to_re "Informationsearchnugget\u{13}spastb.freeprod.comOnlineWeb.fcgi\u{a}")))
(check-sat)
