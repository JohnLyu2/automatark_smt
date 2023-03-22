(declare-const X String)
; ref\x3D\x25user\x5Fid\d+\x2Fbar_pl\x2Fchk\.fcgi
(assert (not (str.in_re X (re.++ (str.to_re "ref=%user_id") (re.+ (re.range "0" "9")) (str.to_re "/bar_pl/chk.fcgi\u{a}")))))
; pgwtjgxwthx\x2fbyb\.xkyLOGurl=enews\x2Eearthlink\x2Enet
(assert (str.in_re X (str.to_re "pgwtjgxwthx/byb.xkyLOGurl=enews.earthlink.net\u{a}")))
; /filename=[^\n]*\x2evap/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".vap/i\u{a}"))))
; [^A-Za-z0-9_@\.]|@{2,}|\.{5,}
(assert (str.in_re X (re.union (re.++ ((_ re.loop 2 2) (str.to_re "@")) (re.* (str.to_re "@"))) (re.++ (str.to_re "\u{a}") ((_ re.loop 5 5) (str.to_re ".")) (re.* (str.to_re "."))) (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "_") (str.to_re "@") (str.to_re "."))))
; rprpgbnrppb\x2fci\d\x2ElStopperHost\x3AHost\x3aclvompycem\x2fcen\.vcn
(assert (str.in_re X (re.++ (str.to_re "rprpgbnrppb/ci") (re.range "0" "9") (str.to_re ".lStopperHost:Host:clvompycem/cen.vcn\u{a}"))))
(check-sat)
