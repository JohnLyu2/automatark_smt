(declare-const X String)
; /\x2epptx([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.pptx") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; /filename=[^\n]*\x2ejfif/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".jfif/i\u{a}")))))
; /(<\/?)(\w+)([^>]*>)/e
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "/e\u{a}<") (re.opt (str.to_re "/")) (re.* (re.comp (str.to_re ">"))) (str.to_re ">")))))
; User-Agent\x3AX-Mailer\x3aHost\x3Adcww\x2Edmcast\x2Ecom
(assert (str.in_re X (str.to_re "User-Agent:X-Mailer:\u{13}Host:dcww.dmcast.com\u{a}")))
; User-Agent\x3a\s+sErver\s+-~-GREATHost\x3a
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "sErver") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "-~-GREATHost:\u{a}"))))
(check-sat)
