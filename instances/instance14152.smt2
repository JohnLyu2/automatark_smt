(declare-const X String)
; /\x2elzh([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.lzh") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; /\/index\d{9}\.asp/i
(assert (str.in_re X (re.++ (str.to_re "//index") ((_ re.loop 9 9) (re.range "0" "9")) (str.to_re ".asp/i\u{a}"))))
(check-sat)

(exit)
