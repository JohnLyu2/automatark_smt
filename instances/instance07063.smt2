(declare-const X String)
; Toolbarwww\x2Eonlinecasinoextra\x2Ecom
(assert (not (str.in_re X (str.to_re "Toolbarwww.onlinecasinoextra.com\u{a}"))))
; Host\x3A\s+Host\x3A\x7croogoo\x7cTestiufilfwulmfi\x2friuf\.lio
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:|roogoo|Testiufilfwulmfi/riuf.lio\u{a}"))))
; Informationurl=Host\x3Aaction\x2Eforhttp\x3A\x2F\x2Fwww\.searchinweb\.com\x2Fsearch\.php\?said=bar
(assert (str.in_re X (str.to_re "Informationurl=Host:action.forhttp://www.searchinweb.com/search.php?said=bar\u{a}")))
(check-sat)

(exit)
