(declare-const X String)
; ^\\\\[\w-]+\\(([\w()-][\w\s()-]*[\w()-]+)|([\w()-]+))\$?(\\(([\w()-][\w\s()-]*[\w()-]+)|([\w()-]+)))*\\?$
(assert (not (str.in_re X (re.++ (str.to_re "\u{5c}\u{5c}") (re.+ (re.union (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{5c}") (re.union (re.++ (re.union (str.to_re "(") (str.to_re ")") (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")) (re.* (re.union (str.to_re "(") (str.to_re ")") (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.+ (re.union (str.to_re "(") (str.to_re ")") (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.+ (re.union (str.to_re "(") (str.to_re ")") (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.opt (str.to_re "$")) (re.* (re.++ (str.to_re "\u{5c}") (re.union (re.++ (re.union (str.to_re "(") (str.to_re ")") (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")) (re.* (re.union (str.to_re "(") (str.to_re ")") (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.+ (re.union (str.to_re "(") (str.to_re ")") (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.+ (re.union (str.to_re "(") (str.to_re ")") (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))))) (re.opt (str.to_re "\u{5c}")) (str.to_re "\u{a}")))))
; \x2FrssaboutinformationHost\x3A\x2Fezsbu=DISKHost\x3Aad\x2Emokead\x2Ecom
(assert (not (str.in_re X (str.to_re "/rssaboutinformationHost:/ezsbu=DISKHost:ad.mokead.com\u{a}"))))
; update\.cgilogstoHost\x3A
(assert (not (str.in_re X (str.to_re "update.cgilogstoHost:\u{a}"))))
; www\x2e2-seek\x2ecom\x2fsearch\s+TPSystem
(assert (not (str.in_re X (re.++ (str.to_re "www.2-seek.com/search") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "TPSystem\u{a}")))))
(check-sat)

(exit)
