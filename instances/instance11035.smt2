(declare-const X String)
; /filename=[^\n]*\x2ecov/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".cov/i\u{a}"))))
; GmbH\d+Host\x3A\w+adblock\x2Elinkz\x2EcomUser-Agent\x3Aemail
(assert (not (str.in_re X (re.++ (str.to_re "GmbH") (re.+ (re.range "0" "9")) (str.to_re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "adblock.linkz.comUser-Agent:email\u{a}")))))
; /filename=[^\n]*\x2ereg/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".reg/i\u{a}")))))
(check-sat)

(exit)
