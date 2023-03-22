(declare-const X String)
; Host\x3A\s+\.ico\s+Host\x3Aorigin\x3Dsidefind
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ".ico") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:origin=sidefind\u{a}"))))
; /\x2eslk([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.slk") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; /\x2etif(f)?([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.tif") (re.opt (str.to_re "f")) (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; /\x02[^\x0a]+\x3a[^\x0a]+\x0a/
(assert (str.in_re X (re.++ (str.to_re "/\u{2}") (re.+ (re.comp (str.to_re "\u{a}"))) (str.to_re ":") (re.+ (re.comp (str.to_re "\u{a}"))) (str.to_re "\u{a}/\u{a}"))))
; (^\d{3,5}\,\d{2}$)|(^\d{3,5}$)
(assert (not (str.in_re X (re.union (re.++ ((_ re.loop 3 5) (re.range "0" "9")) (str.to_re ",") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ ((_ re.loop 3 5) (re.range "0" "9")) (str.to_re "\u{a}"))))))
(check-sat)
