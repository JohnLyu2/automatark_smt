(declare-const X String)
; aohobygi\x2fzwiw\s+\+The\+password\+is\x3A
(assert (not (str.in_re X (re.++ (str.to_re "aohobygi/zwiw") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "+The+password+is:\u{a}")))))
; ^\([0-9]{3}\)\s?[0-9]{3}(-|\s)?[0-9]{4}$|^[0-9]{3}-?[0-9]{3}-?[0-9]{4}$
(assert (not (str.in_re X (re.union (re.++ (str.to_re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ")") (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to_re "-")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to_re "-")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}"))))))
; \x2Fpagead\x2Fads\?\d+ocllceclbhs\x2fgth
(assert (not (str.in_re X (re.++ (str.to_re "/pagead/ads?") (re.+ (re.range "0" "9")) (str.to_re "ocllceclbhs/gth\u{a}")))))
(check-sat)

(exit)
