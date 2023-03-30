(declare-const X String)
; ref\x3D\x25user\x5Fid\d+\x2Fbar_pl\x2Fchk\.fcgi
(assert (str.in_re X (re.++ (str.to_re "ref=%user_id") (re.+ (re.range "0" "9")) (str.to_re "/bar_pl/chk.fcgi\u{a}"))))
(check-sat)

(exit)
