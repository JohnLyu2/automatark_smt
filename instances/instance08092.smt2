(declare-const X String)
; port\s+aresflashdownloader\x2Ecom\s+adfsgecoiwnf\x23\x23\x23\x23User-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "port") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "aresflashdownloader.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "adfsgecoiwnf\u{1b}####User-Agent:\u{a}")))))
; ^((([+])?[1])?\s{0,1}\d{3}\s{0,1}\d{3}\s{0,1}\d{4})$
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") (re.opt (re.++ (re.opt (str.to_re "+")) (str.to_re "1"))) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 4 4) (re.range "0" "9"))))))
; ^(000000[1-9])$|^(00000[1-9][0-9])$|^(0000[1-9][0-9][0-9])$|^(000[1-9][0-9][0-9][0-9])$|^(00[1-9][0-9][0-9][0-9][0-9])$|^(0[1-9][0-9][0-9][0-9][0-9][0-9])$|^([1-9][0-9][0-9][0-9][0-9][0-9][0-9])$
(assert (str.in_re X (re.union (re.++ (str.to_re "000000") (re.range "1" "9")) (re.++ (str.to_re "00000") (re.range "1" "9") (re.range "0" "9")) (re.++ (str.to_re "0000") (re.range "1" "9") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to_re "000") (re.range "1" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to_re "00") (re.range "1" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to_re "0") (re.range "1" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to_re "\u{a}") (re.range "1" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9")))))
; /filename=[^\n]*\x2ek3g/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".k3g/i\u{a}"))))
; <[iI][mM][gG]([^>]*[^/>]*[/>]*[>])
(assert (str.in_re X (re.++ (str.to_re "<") (re.union (str.to_re "i") (str.to_re "I")) (re.union (str.to_re "m") (str.to_re "M")) (re.union (str.to_re "g") (str.to_re "G")) (str.to_re "\u{a}") (re.* (re.comp (str.to_re ">"))) (re.* (re.union (str.to_re "/") (str.to_re ">"))) (re.* (re.union (str.to_re "/") (str.to_re ">"))) (str.to_re ">"))))
(check-sat)

(exit)
