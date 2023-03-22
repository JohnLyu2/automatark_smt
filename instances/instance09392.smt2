(declare-const X String)
; /^SSID=[a-zA-Z\d]{43}\x3B\x20A=[0-3]$/C
(assert (not (str.in_re X (re.++ (str.to_re "/SSID=") ((_ re.loop 43 43) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "; A=") (re.range "0" "3") (str.to_re "/C\u{a}")))))
; /\x2eogx([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.ogx") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; requested.*zmnjgmomgbdz\x2fzzmw\.gzt\s+Reportsdaosearch\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "requested") (re.* re.allchar) (str.to_re "zmnjgmomgbdz/zzmw.gzt") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Reportsdaosearch.com\u{a}")))))
; Subject\x3A\swww\x2Esearchwords\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "Subject:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.searchwords.com\u{a}"))))
(check-sat)
