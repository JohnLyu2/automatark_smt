(declare-const X String)
; dialupvpn\x5fpwd\w+tvlistings\s+fowclxccdxn\x2fuxwn\.ddywww\x2evirusprotectpro\x2ecom\stoolbar\.anwb\.nl
(assert (not (str.in_re X (re.++ (str.to_re "dialupvpn_pwd") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "tvlistings") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "fowclxccdxn/uxwn.ddywww.virusprotectpro.com") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "toolbar.anwb.nl\u{a}")))))
(check-sat)
