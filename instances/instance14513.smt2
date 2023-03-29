(declare-const X String)
; passcorrect\x3B\d+AcmeSubject\x3Aready\.\r\nby\x2Fcbn\x2Fnode=
(assert (not (str.in_re X (re.++ (str.to_re "passcorrect;") (re.+ (re.range "0" "9")) (str.to_re "AcmeSubject:ready.\u{d}\u{a}by/cbn/node=\u{a}")))))
; /\x26tv\x3d\d\.\d\.\d{4}\.\d{4}/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/&tv=") (re.range "0" "9") (str.to_re ".") (re.range "0" "9") (str.to_re ".") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "/smiU\u{a}")))))
; /filename=[^\n]*\x2epsd/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".psd/i\u{a}"))))
; \x03\x00\x1c\x00\x00\x00\x00\x00\x01Furax
(assert (not (str.in_re X (str.to_re "\u{3}\u{0}\u{1c}\u{0}\u{0}\u{0}\u{0}\u{0}\u{1}Furax\u{a}"))))
; ^(((((((00|\+)49[ \-/]?)|0)[1-9][0-9]{1,4})[ \-/]?)|((((00|\+)49\()|\(0)[1-9][0-9]{1,4}\)[ \-/]?))[0-9]{1,7}([ \-/]?[0-9]{1,5})?)$
(assert (str.in_re X (re.++ (str.to_re "\u{a}") (re.union (re.++ (re.opt (re.union (str.to_re " ") (str.to_re "-") (str.to_re "/"))) (re.union (re.++ (re.union (str.to_re "00") (str.to_re "+")) (str.to_re "49") (re.opt (re.union (str.to_re " ") (str.to_re "-") (str.to_re "/")))) (str.to_re "0")) (re.range "1" "9") ((_ re.loop 1 4) (re.range "0" "9"))) (re.++ (re.union (re.++ (re.union (str.to_re "00") (str.to_re "+")) (str.to_re "49(")) (str.to_re "(0")) (re.range "1" "9") ((_ re.loop 1 4) (re.range "0" "9")) (str.to_re ")") (re.opt (re.union (str.to_re " ") (str.to_re "-") (str.to_re "/"))))) ((_ re.loop 1 7) (re.range "0" "9")) (re.opt (re.++ (re.opt (re.union (str.to_re " ") (str.to_re "-") (str.to_re "/"))) ((_ re.loop 1 5) (re.range "0" "9")))))))
(check-sat)

(exit)
