(declare-const X String)
; to\s+Host\x3AWeHost\x3a
(assert (str.in_re X (re.++ (str.to_re "to") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:WeHost:\u{a}"))))
; /\x2ejar([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.jar") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; Subject\x3A\swww\x2Esearchwords\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "Subject:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.searchwords.com\u{a}"))))
; for[^\n\r]*Host\x3A\sinternalcyber@yahoo\x2EcomHeadersRedirection
(assert (str.in_re X (re.++ (str.to_re "for") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "internalcyber@yahoo.comHeadersRedirection\u{a}"))))
; User-Agent\x3aHost\x3AHost\x3ASpyBuddy
(assert (not (str.in_re X (str.to_re "User-Agent:Host:Host:SpyBuddy\u{a}"))))
(check-sat)
