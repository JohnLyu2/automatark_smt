(declare-const X String)
; /"(\\["\\]|[^"])*("|$)|'(\\['\\]|[^'])*('|$)|(\\["'\\]|[^\s"'])+/g
(assert (str.in_re X (re.union (re.++ (str.to_re "/\u{22}") (re.* (re.union (re.++ (str.to_re "\u{5c}") (re.union (str.to_re "\u{22}") (str.to_re "\u{5c}"))) (re.comp (str.to_re "\u{22}")))) (str.to_re "\u{22}")) (re.++ (str.to_re "'") (re.* (re.union (re.++ (str.to_re "\u{5c}") (re.union (str.to_re "'") (str.to_re "\u{5c}"))) (re.comp (str.to_re "'")))) (str.to_re "'")) (re.++ (re.+ (re.union (re.++ (str.to_re "\u{5c}") (re.union (str.to_re "\u{22}") (str.to_re "'") (str.to_re "\u{5c}"))) (str.to_re "\u{22}") (str.to_re "'") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/g\u{a}")))))
; \x23\x23\x23\x23Host\x3ASubject\x3Awww\x2Epcsentinelsoftware\x2EcomHost\x3AWeHost\x3awww\x2Ewowokay\x2Ecom/wowokaybar\x2Ephp
(assert (not (str.in_re X (str.to_re "####Host:Subject:www.pcsentinelsoftware.comHost:WeHost:www.wowokay.com/wowokaybar.php\u{a}"))))
; ^(([a-zA-Z]+\d+)|(\d+[a-zA-Z]+))[a-zA-Z0-9]*$
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.+ (re.range "0" "9"))) (re.++ (re.+ (re.range "0" "9")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))))) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "\u{a}")))))
; www\x2Ericercadoppia\x2Ecom[^\n\r]*xml\s+User-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "www.ricercadoppia.com") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "xml") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:\u{a}")))))
(check-sat)
