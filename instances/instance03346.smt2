(declare-const X String)
; Host\x3A\d+zmnjgmomgbdz\x2fzzmw\.gzt%3ftoolbar\x2Ei-lookup\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "zmnjgmomgbdz/zzmw.gzt%3ftoolbar.i-lookup.com\u{a}")))))
(check-sat)

(exit)
