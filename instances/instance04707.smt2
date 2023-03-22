(declare-const X String)
; Host\x3A\d+\x2Fcommunicatortb\swww\.fast-finder\.comBrowser\x2FGR
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "/communicatortb") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.fast-finder.comBrowser/GR\u{a}"))))
(check-sat)
