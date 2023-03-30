(declare-const X String)
; Subject\x3a\d+zmnjgmomgbdz\x2fzzmw\.gzt
(assert (not (str.in_re X (re.++ (str.to_re "Subject:") (re.+ (re.range "0" "9")) (str.to_re "zmnjgmomgbdz/zzmw.gzt\u{a}")))))
(check-sat)

(exit)
