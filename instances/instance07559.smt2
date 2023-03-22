(declare-const X String)
; /\x2epjpeg([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.pjpeg") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; /filename=[^\n]*\x2esum/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".sum/i\u{a}")))))
; /\x2F[a-z]+\x2epng/Ui
(assert (str.in_re X (re.++ (str.to_re "//") (re.+ (re.range "a" "z")) (str.to_re ".png/Ui\u{a}"))))
; /\/software\x2ephp\x3f[0-9]{15,}/Ui
(assert (str.in_re X (re.++ (str.to_re "//software.php?/Ui\u{a}") ((_ re.loop 15 15) (re.range "0" "9")) (re.* (re.range "0" "9")))))
; ConnectionUser-Agent\x3A\swww\.fast-finder\.com
(assert (str.in_re X (re.++ (str.to_re "ConnectionUser-Agent:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.fast-finder.com\u{a}"))))
(check-sat)
