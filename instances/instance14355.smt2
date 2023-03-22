(declare-const X String)
; /[^\x0d\x0a\x09\x20-\x7e]{4}/P
(assert (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 4 4) (re.union (str.to_re "\u{d}") (str.to_re "\u{a}") (str.to_re "\u{9}") (re.range " " "~"))) (str.to_re "/P\u{a}"))))
; /\)\r\nHost\x3a\x20[a-z\d\x2e\x2d]{6,32}\r\nCache\x2dControl\x3a\x20no\x2dcache\r\n\r\n$/
(assert (not (str.in_re X (re.++ (str.to_re "/)\u{d}\u{a}Host: ") ((_ re.loop 6 32) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re ".") (str.to_re "-"))) (str.to_re "\u{d}\u{a}Cache-Control: no-cache\u{d}\u{a}\u{d}\u{a}/\u{a}")))))
; nick_name=CIA-Test\d+url=http\x3A\d+\x2FNFO\x2CRegistered\x28BDLL\x29
(assert (str.in_re X (re.++ (str.to_re "nick_name=CIA-Test") (re.+ (re.range "0" "9")) (str.to_re "url=http:\u{1b}") (re.+ (re.range "0" "9")) (str.to_re "/NFO,Registered(BDLL)\u{13}\u{a}"))))
; /filename=[^\n]*\x2eogv/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".ogv/i\u{a}")))))
(check-sat)
