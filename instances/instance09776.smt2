(declare-const X String)
; media\x2Edxcdirect\x2Ecom
(assert (not (str.in_re X (str.to_re "media.dxcdirect.com\u{a}"))))
; User-Agent\x3A\s+community\d+
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "community") (re.+ (re.range "0" "9")) (str.to_re "\u{a}"))))
; /\.gif\x3f[a-f0-9]{4,7}\x3d\d{6,8}$/U
(assert (str.in_re X (re.++ (str.to_re "/.gif?") ((_ re.loop 4 7) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "=") ((_ re.loop 6 8) (re.range "0" "9")) (str.to_re "/U\u{a}"))))
(check-sat)
