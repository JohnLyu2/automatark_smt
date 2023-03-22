(declare-const X String)
; ref\x3D\x25user\x5Fid\d+\x2Fbar_pl\x2Fchk\.fcgi
(assert (not (str.in_re X (re.++ (str.to_re "ref=%user_id") (re.+ (re.range "0" "9")) (str.to_re "/bar_pl/chk.fcgi\u{a}")))))
; /filename=[^\n]*\x2efon/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".fon/i\u{a}")))))
(check-sat)
