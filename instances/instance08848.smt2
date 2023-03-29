(declare-const X String)
; /\x2ep2g([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.p2g") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; Host\x3A\w+wwwfromToolbartheServer\x3Awww\x2Esearchreslt\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "wwwfromToolbartheServer:www.searchreslt.com\u{a}")))))
; e2give\.com\s+data2\.activshopper\.com
(assert (not (str.in_re X (re.++ (str.to_re "e2give.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "data2.activshopper.com\u{a}")))))
; <!\[CDATA\[([^\]]*)\]\]>
(assert (not (str.in_re X (re.++ (str.to_re "<![CDATA[") (re.* (re.comp (str.to_re "]"))) (str.to_re "]]>\u{a}")))))
; /filename=[^\n]*\x2em4p/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".m4p/i\u{a}"))))
(check-sat)

(exit)
