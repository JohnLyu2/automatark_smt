(declare-const X String)
; /^\/\d{9,10}\/1\/1\d{9}\.pdf$/U
(assert (not (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 9 10) (re.range "0" "9")) (str.to_re "/1/1") ((_ re.loop 9 9) (re.range "0" "9")) (str.to_re ".pdf/U\u{a}")))))
; /filename=[^\n]*\x2epls/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pls/i\u{a}")))))
; www\x2Eyoogee\x2EcomserverHost\x3Aref\x3D\x25user\x5Fid
(assert (not (str.in_re X (str.to_re "www.yoogee.com\u{13}serverHost:ref=%user_id\u{a}"))))
; PASSW=\w+www2\x2einstantbuzz\x2ecom\x2Fbar_pl\x2Fchk_bar\.fcgi
(assert (not (str.in_re X (re.++ (str.to_re "PASSW=") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "www2.instantbuzz.com/bar_pl/chk_bar.fcgi\u{a}")))))
; \d\d?\d?\.\d\d?\d?\.\d\d?\d?\.\d\d?\d?
(assert (not (str.in_re X (re.++ (re.range "0" "9") (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (str.to_re ".") (re.range "0" "9") (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (str.to_re ".") (re.range "0" "9") (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (str.to_re ".") (re.range "0" "9") (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
