(declare-const X String)
; v\x3B\d+more.*is\.htazmnjgmomgbdz\x2fzzmw\.gzt
(assert (str.in_re X (re.++ (str.to_re "v;") (re.+ (re.range "0" "9")) (str.to_re "more") (re.* re.allchar) (str.to_re "is.htazmnjgmomgbdz/zzmw.gzt\u{a}"))))
; /\x2eskm([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.skm") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
(check-sat)

(exit)
