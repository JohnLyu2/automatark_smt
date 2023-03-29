(declare-const X String)
; www\x2Eweepee\x2Ecom\w+Owner\x3Aiswww\x2Eemp3finder\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "www.weepee.com\u{1b}") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Owner:iswww.emp3finder.com\u{a}")))))
; ^[0-9]+\.?[0-9]?[0-9]?[0,5]?$
(assert (not (str.in_re X (re.++ (re.+ (re.range "0" "9")) (re.opt (str.to_re ".")) (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.opt (re.union (str.to_re "0") (str.to_re ",") (str.to_re "5"))) (str.to_re "\u{a}")))))
; /^\/jmx.jar?r=\d+/Ui
(assert (str.in_re X (re.++ (str.to_re "//jmx") re.allchar (str.to_re "ja") (re.opt (str.to_re "r")) (str.to_re "r=") (re.+ (re.range "0" "9")) (str.to_re "/Ui\u{a}"))))
; /filename=[^\n]*\x2ejnlp/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".jnlp/i\u{a}"))))
; Host\x3A[^\n\r]*\x2Fbar_pl\x2Fshdoclc\.fcgi
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "/bar_pl/shdoclc.fcgi\u{a}")))))
(check-sat)

(exit)
