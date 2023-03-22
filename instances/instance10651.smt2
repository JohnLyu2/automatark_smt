(declare-const X String)
; search\x2econduit\x2ecom\sPARSER.*
(assert (str.in_re X (re.++ (str.to_re "search.conduit.com") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "PARSER") (re.* re.allchar) (str.to_re "\u{a}"))))
; www\x2Esogou\x2Ecomix=WebsiteHost\x3aWeb-Mail
(assert (str.in_re X (str.to_re "www.sogou.comix=WebsiteHost:Web-Mail\u{a}")))
; (\w(\s)?)+
(assert (str.in_re X (re.++ (re.+ (re.++ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))) (str.to_re "\u{a}"))))
(check-sat)
