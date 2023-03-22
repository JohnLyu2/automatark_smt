(declare-const X String)
; thereHost\x3Aselect\x2FGetwww\x2e2-seek\x2ecom\x2fsearch
(assert (not (str.in_re X (str.to_re "thereHost:select/Getwww.2-seek.com/search\u{a}"))))
(check-sat)
