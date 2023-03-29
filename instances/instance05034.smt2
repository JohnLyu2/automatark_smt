(declare-const X String)
; Subject\x3A.*Host\x3A\d+iz=iMeshBar%3f\x2Fbar_pl\x2Fchk_bar\.fcgi
(assert (str.in_re X (re.++ (str.to_re "Subject:") (re.* re.allchar) (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "iz=iMeshBar%3f/bar_pl/chk_bar.fcgi\u{a}"))))
(check-sat)

(exit)
