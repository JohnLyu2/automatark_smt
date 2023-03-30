(declare-const X String)
; passcorrect\x3B\d+AcmeSubject\x3Aready\.\r\nby\x2Fcbn\x2Fnode=
(assert (str.in_re X (re.++ (str.to_re "passcorrect;") (re.+ (re.range "0" "9")) (str.to_re "AcmeSubject:ready.\u{d}\u{a}by/cbn/node=\u{a}"))))
; /\x2emkv([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.mkv") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; /\&h=11$/U
(assert (str.in_re X (str.to_re "/&h=11/U\u{a}")))
(check-sat)

(exit)
