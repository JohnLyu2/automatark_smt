(declare-const X String)
; Host\x3AHost\x3afhfksjzsfu\x2fahm\.uqsHost\x3Afowclxccdxn\x2fuxwn\.ddy
(assert (str.in_re X (str.to_re "Host:Host:fhfksjzsfu/ahm.uqsHost:fowclxccdxn/uxwn.ddy\u{a}")))
; /\.php\?[a-z]{2,8}=[a-z0-9]{2}\x3a[a-z0-9]{2}\x3a[a-z0-9]{2}\x3a[a-z0-9]{2}\x3a[a-z0-9]{2}\&[a-z]{2,8}=/U
(assert (str.in_re X (re.++ (str.to_re "/.php?") ((_ re.loop 2 8) (re.range "a" "z")) (str.to_re "=") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re ":") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re ":") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re ":") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re ":") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "&") ((_ re.loop 2 8) (re.range "a" "z")) (str.to_re "=/U\u{a}"))))
; dialup\x5fvpn\x40hermangroup\x2Eorg\s+www\x2Epeer2mail\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "dialup_vpn@hermangroup.org") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.peer2mail.com\u{a}")))))
; client\x2Ebaigoo\x2EcomUser\x3A
(assert (not (str.in_re X (str.to_re "client.baigoo.comUser:\u{a}"))))
(check-sat)
