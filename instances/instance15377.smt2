(declare-const X String)
; www\x2Eonlinecasinoextra\x2Ecomsqlads\.grokads\.com
(assert (not (str.in_re X (str.to_re "www.onlinecasinoextra.comsqlads.grokads.com\u{a}"))))
; User-Agent\x3A\s+information\swww\x2Etopadwarereviews\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "information") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.topadwarereviews.com\u{a}"))))
(check-sat)

(exit)
