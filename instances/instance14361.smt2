(declare-const X String)
; ^\d{4}(\/|-)([0][1-9]|[1][0-2])(\/|-)([0][1-9]|[1-2][0-9]|[3][0-1])$
(assert (not (str.in_re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.union (str.to_re "/") (str.to_re "-")) (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (re.union (str.to_re "/") (str.to_re "-")) (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.range "1" "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.range "0" "1"))) (str.to_re "\u{a}")))))
; Subject\x3a\s+Yeah\!Online\x2521\x2521\x2521
(assert (str.in_re X (re.++ (str.to_re "Subject:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Yeah!Online%21%21%21\u{a}"))))
; /filename=[^\n]*\x2ertx/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".rtx/i\u{a}"))))
; dialupvpn\x5fpwd\w+tvlistings\s+fowclxccdxn\x2fuxwn\.ddywww\x2evirusprotectpro\x2ecom\stoolbar\.anwb\.nl
(assert (str.in_re X (re.++ (str.to_re "dialupvpn_pwd") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "tvlistings") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "fowclxccdxn/uxwn.ddywww.virusprotectpro.com") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "toolbar.anwb.nl\u{a}"))))
(check-sat)
