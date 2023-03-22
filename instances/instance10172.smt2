(declare-const X String)
; SPY\s\x5BStaticHost\x3AFROM\x3Acs\x2Eshopperreports\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "SPY") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "[StaticHost:FROM:cs.shopperreports.com\u{a}")))))
; /\x2ejmh([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.jmh") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; /filename\=[a-z0-9]{24}\.exe/H
(assert (str.in_re X (re.++ (str.to_re "/filename=") ((_ re.loop 24 24) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re ".exe/H\u{a}"))))
; User-Agent\x3AHost\x3ATeomaBarHost\x3AHoursHost\x3A
(assert (not (str.in_re X (str.to_re "User-Agent:Host:TeomaBarHost:HoursHost:\u{a}"))))
; /\x2esmil([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.smil") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
(check-sat)
