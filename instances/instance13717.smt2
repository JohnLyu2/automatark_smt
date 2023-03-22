(declare-const X String)
; ZC-Bridge\d+JMail\d+GENERAL_PARAM2
(assert (str.in_re X (re.++ (str.to_re "ZC-Bridge") (re.+ (re.range "0" "9")) (str.to_re "JMail") (re.+ (re.range "0" "9")) (str.to_re "GENERAL_PARAM2\u{a}"))))
; /filename=[^\n]*\x2ecsd/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".csd/i\u{a}"))))
; /\x2eplp([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.plp") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; /filename=[^\n]*\x2exul/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".xul/i\u{a}"))))
(check-sat)
