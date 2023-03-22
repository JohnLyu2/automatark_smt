(declare-const X String)
; zmnjgmomgbdz\x2fzzmw\.gzt\d+Ready
(assert (not (str.in_re X (re.++ (str.to_re "zmnjgmomgbdz/zzmw.gzt") (re.+ (re.range "0" "9")) (str.to_re "Ready\u{a}")))))
(check-sat)
