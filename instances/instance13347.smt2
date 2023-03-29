(declare-const X String)
; Information\s+Host\x3A.*com
(assert (str.in_re X (re.++ (str.to_re "Information") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.* re.allchar) (str.to_re "com\u{a}"))))
; TSA\x2FS\x3aUsers\x5chttp\x3A\x2F\x2Ftv\x2Eseekmo\x2Ecom\x2Fshowme\x2Easpx\x3Fkeyword=
(assert (not (str.in_re X (str.to_re "TSA/S:Users\u{5c}http://tv.seekmo.com/showme.aspx?keyword=\u{a}"))))
; /(<\/?)(\w+)([^>]*>)/e
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "/e\u{a}<") (re.opt (str.to_re "/")) (re.* (re.comp (str.to_re ">"))) (str.to_re ">")))))
; e2give\.com\s+adfsgecoiwnf\x23\x23\x23\x23User-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "e2give.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "adfsgecoiwnf\u{1b}####User-Agent:\u{a}"))))
(check-sat)

(exit)
