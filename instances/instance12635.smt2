(declare-const X String)
; [1-9][0-9]
(assert (not (str.in_re X (re.++ (re.range "1" "9") (re.range "0" "9") (str.to_re "\u{a}")))))
; Pleasetvshowticketsmedia\x2Edxcdirect\x2Ecom\x2Fbar_pl\x2Fchk\.fcgi
(assert (not (str.in_re X (str.to_re "Pleasetvshowticketsmedia.dxcdirect.com/bar_pl/chk.fcgi\u{a}"))))
; /[a-z0-9]{32}\.jar/
(assert (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 32 32) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re ".jar/\u{a}"))))
(check-sat)
