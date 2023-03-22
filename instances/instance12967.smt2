(declare-const X String)
; /(A|B|AB|O)[+-]/
(assert (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "A") (str.to_re "B") (str.to_re "AB") (str.to_re "O")) (re.union (str.to_re "+") (str.to_re "-")) (str.to_re "/\u{a}"))))
; /Referer\x3a\x20[^\s]*\x3a8000\x2f[a-z]+\?[a-z]+=\d{6,7}\x0d\x0a/H
(assert (str.in_re X (re.++ (str.to_re "/Referer: ") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ":8000/") (re.+ (re.range "a" "z")) (str.to_re "?") (re.+ (re.range "a" "z")) (str.to_re "=") ((_ re.loop 6 7) (re.range "0" "9")) (str.to_re "\u{d}\u{a}/H\u{a}"))))
; wowokayoffers\x2Ebullseye-network\x2EcomRTB\x0D\x0A\x0D\x0AAttached
(assert (not (str.in_re X (str.to_re "wowokayoffers.bullseye-network.comRTB\u{d}\u{a}\u{d}\u{a}Attached\u{a}"))))
; /\x2fpanda\x2f\x3fu\x3d[a-z0-9]{32}/U
(assert (str.in_re X (re.++ (str.to_re "//panda/?u=") ((_ re.loop 32 32) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "/U\u{a}"))))
(check-sat)
