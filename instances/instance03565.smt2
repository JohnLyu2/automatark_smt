(declare-const X String)
; \x2FrssScaneradfsgecoiwnf\x7D\x7BTrojan\x3AlogsHost\x3a
(assert (not (str.in_re X (str.to_re "/rssScaneradfsgecoiwnf\u{1b}}{Trojan:logsHost:\u{a}"))))
(check-sat)

(exit)
