(declare-const X String)
; wp-includes\x2Ftheme\x2Ephp\x3F.*Apofis\s+TencentTraveler
(assert (str.in_re X (re.++ (str.to_re "wp-includes/theme.php?") (re.* re.allchar) (str.to_re "Apofis") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "TencentTraveler\u{a}"))))
(check-sat)

(exit)
