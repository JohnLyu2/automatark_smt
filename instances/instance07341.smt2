(declare-const X String)
; [ \t]+$
(assert (not (str.in_re X (re.++ (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}"))) (str.to_re "\u{a}")))))
; /filename=[^\n]*\x2eogx/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".ogx/i\u{a}"))))
; .\{\d\}
(assert (str.in_re X (re.++ re.allchar (str.to_re "{") (re.range "0" "9") (str.to_re "}\u{a}"))))
; vvvjkhmbgnbbw\x2fqbn\x28robert\x40blackcastlesoft\x2Ecom\x29
(assert (not (str.in_re X (str.to_re "vvvjkhmbgnbbw/qbn\u{1b}(robert@blackcastlesoft.com)\u{a}"))))
(check-sat)
