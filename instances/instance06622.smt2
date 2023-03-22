(declare-const X String)
; \x2FGR\s+\x2APORT3\x2A\d+Host\x3A
(assert (str.in_re X (re.++ (str.to_re "/GR") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "*PORT3*") (re.+ (re.range "0" "9")) (str.to_re "Host:\u{a}"))))
; /^\/[A-Za-z0-9]+\/[A-Za-z0-9]+\.php\?[A-Za-z0-9\x2B\x2F\x3D]{300}/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//") (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to_re "/") (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to_re ".php?") ((_ re.loop 300 300) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "+") (str.to_re "/") (str.to_re "="))) (str.to_re "/Ui\u{a}")))))
; ^[0-9]*[1-9]+$|^[1-9]+[0-9]*$
(assert (not (str.in_re X (re.union (re.++ (re.* (re.range "0" "9")) (re.+ (re.range "1" "9"))) (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")) (str.to_re "\u{a}"))))))
; max-\s+\x2Fbar_pl\x2Ffav\.fcgi
(assert (str.in_re X (re.++ (str.to_re "max-") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/bar_pl/fav.fcgi\u{a}"))))
; tv\x2E180solutions\x2Ecom\s+have\s+Dayspassword\x3B0\x3BIncorrect
(assert (str.in_re X (re.++ (str.to_re "tv.180solutions.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "have") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Dayspassword;0;Incorrect\u{a}"))))
(check-sat)
