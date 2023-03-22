(declare-const X String)
; Informationurl=Host\x3Aaction\x2Eforhttp\x3A\x2F\x2Fwww\.searchinweb\.com\x2Fsearch\.php\?said=bar
(assert (not (str.in_re X (str.to_re "Informationurl=Host:action.forhttp://www.searchinweb.com/search.php?said=bar\u{a}"))))
(check-sat)
