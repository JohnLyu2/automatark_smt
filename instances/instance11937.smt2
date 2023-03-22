(declare-const X String)
; /Referer\x3a\x20[^\s]*\x3a8000\x2f[a-z]+\?[a-z]+=\d{6,7}\x0d\x0a/H
(assert (not (str.in_re X (re.++ (str.to_re "/Referer: ") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ":8000/") (re.+ (re.range "a" "z")) (str.to_re "?") (re.+ (re.range "a" "z")) (str.to_re "=") ((_ re.loop 6 7) (re.range "0" "9")) (str.to_re "\u{d}\u{a}/H\u{a}")))))
; /\x2eswf([\x3f\x2f]|$)/Uim
(assert (not (str.in_re X (re.++ (str.to_re "/.swf") (re.union (str.to_re "?") (str.to_re "/")) (str.to_re "/Uim\u{a}")))))
; /filename=[^\n]*\x2ezip/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".zip/i\u{a}"))))
(check-sat)
