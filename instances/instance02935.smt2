(declare-const X String)
; dialupvpn\x5fpwd\d\<title\>Actual\sSpywareStrike\s+fowclxccdxn\x2fuxwn\.ddywww\x2evirusprotectpro\x2ecom
(assert (not (str.in_re X (re.++ (str.to_re "dialupvpn_pwd") (re.range "0" "9") (str.to_re "<title>Actual") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "SpywareStrike") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "fowclxccdxn/uxwn.ddywww.virusprotectpro.com\u{a}")))))
(check-sat)
