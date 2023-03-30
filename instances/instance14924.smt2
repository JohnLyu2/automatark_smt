(declare-const X String)
; /\/download\.asp\?p\=\d$/Ui
(assert (str.in_re X (re.++ (str.to_re "//download.asp?p=") (re.range "0" "9") (str.to_re "/Ui\u{a}"))))
; www\x2Eweepee\x2Ecom\w+Owner\x3Aiswww\x2Eemp3finder\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "www.weepee.com\u{1b}") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Owner:iswww.emp3finder.com\u{a}")))))
; /filename=[^\n]*\x2esum/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".sum/i\u{a}")))))
; /^udpdata\x7c\d+\x7c\d+\x7C[a-z0-9]+\x2E[a-z]{2,3}\x7C[a-z0-9]+\x7C/
(assert (str.in_re X (re.++ (str.to_re "/udpdata|") (re.+ (re.range "0" "9")) (str.to_re "|") (re.+ (re.range "0" "9")) (str.to_re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re ".") ((_ re.loop 2 3) (re.range "a" "z")) (str.to_re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "|/\u{a}"))))
(check-sat)

(exit)
