(declare-const X String)
; User-Agent\x3a\w+Owner\x3A
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Owner:\u{a}"))))
; /\x2ewps([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.wps") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; /\x26tv\x3d\d\.\d\.\d{4}\.\d{4}/smiU
(assert (str.in_re X (re.++ (str.to_re "/&tv=") (re.range "0" "9") (str.to_re ".") (re.range "0" "9") (str.to_re ".") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "/smiU\u{a}"))))
; /filename=[^\n]*\x2ecpe/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".cpe/i\u{a}"))))
(check-sat)

(exit)
