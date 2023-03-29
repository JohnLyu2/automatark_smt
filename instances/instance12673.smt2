(declare-const X String)
; www\x2Epurityscan\x2Ecom.*
(assert (not (str.in_re X (re.++ (str.to_re "www.purityscan.com") (re.* re.allchar) (str.to_re "\u{a}")))))
; Fictional\sHost\x3AWordmyway\.com
(assert (str.in_re X (re.++ (str.to_re "Fictional") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Host:Wordmyway.com\u{a}"))))
; /filename=[^\n]*\x2epptx/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pptx/i\u{a}"))))
(check-sat)

(exit)
