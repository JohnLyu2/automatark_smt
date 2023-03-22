(declare-const X String)
; clvompycem\x2fcen\.vcn.*Host\x3A\s+toolbar_domain_redirectHost\x3a
(assert (not (str.in_re X (re.++ (str.to_re "clvompycem/cen.vcn") (re.* re.allchar) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "toolbar_domain_redirectHost:\u{a}")))))
(check-sat)
