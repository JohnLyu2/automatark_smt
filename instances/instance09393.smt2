(declare-const X String)
; /\x2efli([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.fli") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; HXLogOnlyanHost\x3AspasHost\x3A
(assert (not (str.in_re X (str.to_re "HXLogOnlyanHost:spasHost:\u{a}"))))
; .*[Oo0][Ee][Mm].*
(assert (str.in_re X (re.++ (re.* re.allchar) (re.union (str.to_re "O") (str.to_re "o") (str.to_re "0")) (re.union (str.to_re "E") (str.to_re "e")) (re.union (str.to_re "M") (str.to_re "m")) (re.* re.allchar) (str.to_re "\u{a}"))))
(check-sat)
