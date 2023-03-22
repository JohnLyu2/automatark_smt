(declare-const X String)
; ^([0-1])*$
(assert (str.in_re X (re.++ (re.* (re.range "0" "1")) (str.to_re "\u{a}"))))
; %3fc=UI2GmbHbacktrust\x2EcomSpediaReferer\x3ASubject\x3aHost\x3apasscorrect\x3B
(assert (not (str.in_re X (str.to_re "%3fc=UI2GmbHbacktrust.comSpediaReferer:Subject:Host:passcorrect;\u{a}"))))
; ^([0-9]{4})-([0-1][0-9])-([0-3][0-9])\s([0-1][0-9]|[2][0-3]):([0-5][0-9]):([0-5][0-9])$
(assert (not (str.in_re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "--") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) (str.to_re "::\u{a}") (re.range "0" "1") (re.range "0" "9") (re.range "0" "3") (re.range "0" "9") (re.range "0" "5") (re.range "0" "9") (re.range "0" "5") (re.range "0" "9")))))
; iz=iMeshBar%3f\x2Fbar_pl\x2Fchk_bar\.fcgi
(assert (str.in_re X (str.to_re "iz=iMeshBar%3f/bar_pl/chk_bar.fcgi\u{a}")))
; OS\x2F\d+User-Agent\x3AUser-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "OS/") (re.+ (re.range "0" "9")) (str.to_re "User-Agent:User-Agent:\u{a}"))))
(check-sat)
