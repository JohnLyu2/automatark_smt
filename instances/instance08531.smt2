(declare-const X String)
; ^1[34][0-9][0-9]\/((1[0-2])|([1-9]))\/(([12][0-9])|(3[01])|[1-9])$
(assert (str.in_re X (re.++ (str.to_re "1") (re.union (str.to_re "3") (str.to_re "4")) (re.range "0" "9") (re.range "0" "9") (str.to_re "/") (re.union (re.++ (str.to_re "1") (re.range "0" "2")) (re.range "1" "9")) (str.to_re "/") (re.union (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1"))) (re.range "1" "9")) (str.to_re "\u{a}"))))
; <body[\d\sa-z\W\S\s]*>
(assert (str.in_re X (re.++ (str.to_re "<body") (re.* (re.union (re.range "0" "9") (re.range "a" "z") (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.comp (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ">\u{a}"))))
; /filename=[^\n]*\x2equo/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".quo/i\u{a}")))))
; /\x2ejfif([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.jfif") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; url=\swww\x2Ealfacleaner\x2Ecom\d+Host\x3A\x2Fproducts\x2Fspyblocs\x2F
(assert (not (str.in_re X (re.++ (str.to_re "url=") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.alfacleaner.com") (re.+ (re.range "0" "9")) (str.to_re "Host:/products/spyblocs/\u{13}\u{a}")))))
(check-sat)
