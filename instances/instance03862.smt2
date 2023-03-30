(declare-const X String)
; v\x3B\d+more.*is\.htazmnjgmomgbdz\x2fzzmw\.gzt
(assert (not (str.in_re X (re.++ (str.to_re "v;") (re.+ (re.range "0" "9")) (str.to_re "more") (re.* re.allchar) (str.to_re "is.htazmnjgmomgbdz/zzmw.gzt\u{a}")))))
(check-sat)

(exit)
