(declare-const X String)
; ^[A-Z][a-z]+(tz)?(man|berg)$
(assert (str.in_re X (re.++ (re.range "A" "Z") (re.+ (re.range "a" "z")) (re.opt (str.to_re "tz")) (re.union (str.to_re "man") (str.to_re "berg")) (str.to_re "\u{a}"))))
; /filename=[^\n]*\x2epfa/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pfa/i\u{a}")))))
; eveocczmthmmq\x2fomzl\s+zmnjgmomgbdz\x2fzzmw\.gzt
(assert (str.in_re X (re.++ (str.to_re "eveocczmthmmq/omzl") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "zmnjgmomgbdz/zzmw.gzt\u{a}"))))
; libManager\x2Edll\x5Eget
(assert (str.in_re X (str.to_re "libManager.dll^get\u{a}")))
(check-sat)

(exit)
