(declare-const X String)
; Subject\x3a\d+zmnjgmomgbdz\x2fzzmw\.gzt
(assert (not (str.in_re X (re.++ (str.to_re "Subject:") (re.+ (re.range "0" "9")) (str.to_re "zmnjgmomgbdz/zzmw.gzt\u{a}")))))
; (^\b\d+-\d+$\b)|(^\b\d+$\b)
(assert (str.in_re X (re.union (re.++ (re.+ (re.range "0" "9")) (str.to_re "-") (re.+ (re.range "0" "9"))) (re.++ (re.+ (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
