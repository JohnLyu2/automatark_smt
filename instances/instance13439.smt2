(declare-const X String)
; /\x2exsl([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.xsl") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; ^\d+([^.,])?$
(assert (str.in_re X (re.++ (re.+ (re.range "0" "9")) (re.opt (re.union (str.to_re ".") (str.to_re ","))) (str.to_re "\u{a}"))))
(check-sat)

(exit)
