(declare-const X String)
; /^id\x3d[A-F\d]{32}(\x26info\x3d[A-F\d]{24})?$/P
(assert (str.in_re X (re.++ (str.to_re "/id=") ((_ re.loop 32 32) (re.union (re.range "A" "F") (re.range "0" "9"))) (re.opt (re.++ (str.to_re "&info=") ((_ re.loop 24 24) (re.union (re.range "A" "F") (re.range "0" "9"))))) (str.to_re "/P\u{a}"))))
; Host\x3A\s+ulmxct\x2fmqoyc\s+securityOmFkbWluADROARad\x2Emokead\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ulmxct/mqoyc") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "securityOmFkbWluADROARad.mokead.com\u{a}")))))
; dialup\x5fvpn\x40hermangroup\x2EorgUser-Agent\x3A
(assert (not (str.in_re X (str.to_re "dialup_vpn@hermangroup.orgUser-Agent:\u{a}"))))
; Ready[^\n\r]*User-Agent\x3A\s+Client\dFrom\x3AWebtool\x2Eworld2\x2EcnUser-Agent\x3AUser-Agent\x3a
(assert (not (str.in_re X (re.++ (str.to_re "Ready") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Client") (re.range "0" "9") (str.to_re "From:Webtool.world2.cn\u{13}User-Agent:User-Agent:\u{a}")))))
; /\x2Fmrow\x5Fpin\x2F\x3Fid\d+[a-z]{5,}\d{5}\x26rnd\x3D\d+/smi
(assert (not (str.in_re X (re.++ (str.to_re "//mrow_pin/?id") (re.+ (re.range "0" "9")) ((_ re.loop 5 5) (re.range "0" "9")) (str.to_re "&rnd=") (re.+ (re.range "0" "9")) (str.to_re "/smi\u{a}") ((_ re.loop 5 5) (re.range "a" "z")) (re.* (re.range "a" "z"))))))
(check-sat)

(exit)
