(declare-const X String)
; /\.onpropertychange\s*=\s*function[^{]*?\{[^}]*?\w+\.swapNode\x28/ims
(assert (str.in_re X (re.++ (str.to_re "/.onpropertychange") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "=") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "function") (re.* (re.comp (str.to_re "{"))) (str.to_re "{") (re.* (re.comp (str.to_re "}"))) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re ".swapNode(/ims\u{a}"))))
; DigExt.*\x23\x23\x23\x23
(assert (not (str.in_re X (re.++ (str.to_re "DigExt") (re.* re.allchar) (str.to_re "####\u{a}")))))
; /\x2ejp2([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.jp2") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
(check-sat)

(exit)
