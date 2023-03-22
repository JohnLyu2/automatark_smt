(declare-const X String)
; cdpViewWatcher\x2Fcgi\x2Flogurl\.cgiwww\x2Ebydou\x2Ecom
(assert (not (str.in_re X (str.to_re "cdpViewWatcher/cgi/logurl.cgiwww.bydou.com\u{a}"))))
(check-sat)
