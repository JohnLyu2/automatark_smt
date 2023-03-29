(declare-const X String)
; /filename=[^\n]*\x2epptx/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pptx/i\u{a}"))))
; ^(([0-9]{3})[ \-\/]?([0-9]{3})[ \-\/]?([0-9]{3}))|([0-9]{9})|([\+]?([0-9]{3})[ \-\/]?([0-9]{2})[ \-\/]?([0-9]{3})[ \-\/]?([0-9]{3}))$
(assert (str.in_re X (re.union (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "-") (str.to_re "/"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "-") (str.to_re "/"))) ((_ re.loop 3 3) (re.range "0" "9"))) ((_ re.loop 9 9) (re.range "0" "9")) (re.++ (str.to_re "\u{a}") (re.opt (str.to_re "+")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "-") (str.to_re "/"))) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "-") (str.to_re "/"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "-") (str.to_re "/"))) ((_ re.loop 3 3) (re.range "0" "9"))))))
; /\.php\?[a-z]{2,8}=[a-z0-9]{2}\x3a[a-z0-9]{2}\x3a[a-z0-9]{2}\x3a[a-z0-9]{2}\x3a[a-z0-9]{2}\&[a-z]{2,8}=/U
(assert (not (str.in_re X (re.++ (str.to_re "/.php?") ((_ re.loop 2 8) (re.range "a" "z")) (str.to_re "=") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re ":") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re ":") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re ":") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re ":") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "&") ((_ re.loop 2 8) (re.range "a" "z")) (str.to_re "=/U\u{a}")))))
(check-sat)

(exit)
