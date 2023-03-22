(declare-const X String)
; logs\d+X-Mailer\x3a\d+url=enews\x2Eearthlink\x2Enet
(assert (str.in_re X (re.++ (str.to_re "logs") (re.+ (re.range "0" "9")) (str.to_re "X-Mailer:\u{13}") (re.+ (re.range "0" "9")) (str.to_re "url=enews.earthlink.net\u{a}"))))
; rprpgbnrppb\x2fci\d\x2ElStopperHost\x3AHost\x3aclvompycem\x2fcen\.vcn
(assert (not (str.in_re X (re.++ (str.to_re "rprpgbnrppb/ci") (re.range "0" "9") (str.to_re ".lStopperHost:Host:clvompycem/cen.vcn\u{a}")))))
; toolsbar\x2Ekuaiso\x2Ecom\d\x2Fbar_pl\x2Fchk_bar\.fcgi
(assert (not (str.in_re X (re.++ (str.to_re "toolsbar.kuaiso.com") (re.range "0" "9") (str.to_re "/bar_pl/chk_bar.fcgi\u{a}")))))
; User-Agent\x3a[^\n\r]*Echelon.*Blacksnprtz\x7CdialnoSearch
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Echelon") (re.* re.allchar) (str.to_re "Blacksnprtz|dialnoSearch\u{a}"))))
(check-sat)
