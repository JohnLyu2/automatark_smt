(declare-const X String)
; named.*Host\x3A\s+zmnjgmomgbdz\x2fzzmw\.gzt
(assert (not (str.in_re X (re.++ (str.to_re "named") (re.* re.allchar) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "zmnjgmomgbdz/zzmw.gzt\u{a}")))))
; /filename=[^\n]*\x2ehpj/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".hpj/i\u{a}")))))
; Login\d+dll\x3FHOST\x3Acontains
(assert (str.in_re X (re.++ (str.to_re "Login") (re.+ (re.range "0" "9")) (str.to_re "dll?HOST:contains\u{a}"))))
(check-sat)

(exit)
