(declare-const X String)
; /^\/0[a-z]{0,13}[0-9]{0,12}[a-z][a-z0-9]{1,11}$/U
(assert (not (str.in_re X (re.++ (str.to_re "//0") ((_ re.loop 0 13) (re.range "a" "z")) ((_ re.loop 0 12) (re.range "0" "9")) (re.range "a" "z") ((_ re.loop 1 11) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "/U\u{a}")))))
; fsbuff\s+User-Agent\x3Afrom\x3A
(assert (str.in_re X (re.++ (str.to_re "fsbuff") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:from:\u{a}"))))
; /\/[a-f0-9]{32}\.jar/
(assert (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re ".jar/\u{a}"))))
; dialup\x5fvpn\x40hermangroup\x2EorgUser-Agent\x3A
(assert (str.in_re X (str.to_re "dialup_vpn@hermangroup.orgUser-Agent:\u{a}")))
; \x2Fsearchfast\x2F\s+Host\x3A\s+
(assert (not (str.in_re X (re.++ (str.to_re "/searchfast/") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}")))))
(check-sat)

(exit)
