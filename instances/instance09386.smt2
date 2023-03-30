(declare-const X String)
; /\x2ebcl([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.bcl") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; addrwww\x2Etrustedsearch\x2EcomX-Mailer\x3A
(assert (str.in_re X (str.to_re "addrwww.trustedsearch.comX-Mailer:\u{13}\u{a}")))
; \x22StarLogger\x22\w+Host\x3aSoftwareHost\x3AjokeWEBCAM-
(assert (not (str.in_re X (re.++ (str.to_re "\u{22}StarLogger\u{22}") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Host:SoftwareHost:jokeWEBCAM-\u{a}")))))
(check-sat)

(exit)
