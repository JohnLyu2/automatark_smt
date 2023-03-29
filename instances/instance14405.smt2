(declare-const X String)
; /\/images\/[a-zA-Z]\.php\?id\=[0-9]{2,3}(\.\d)?$/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//images/") (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to_re ".php?id=") ((_ re.loop 2 3) (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") (re.range "0" "9"))) (str.to_re "/Ui\u{a}")))))
; \x2Fpagead\x2Fads\?\d+ocllceclbhs\x2fgth
(assert (not (str.in_re X (re.++ (str.to_re "/pagead/ads?") (re.+ (re.range "0" "9")) (str.to_re "ocllceclbhs/gth\u{a}")))))
; /filename=[^\n]*\x2ewk4/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wk4/i\u{a}")))))
(check-sat)

(exit)
