(declare-const X String)
; ^(([0-9]{2,4})([-\s\/]{0,1})([0-9]{4,8}))?$
(assert (not (str.in_re X (re.++ (re.opt (re.++ ((_ re.loop 2 4) (re.range "0" "9")) (re.opt (re.union (str.to_re "-") (str.to_re "/") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 4 8) (re.range "0" "9")))) (str.to_re "\u{a}")))))
; ^[0-9+]{5}-[0-9+]{7}-[0-9]{1}$
(assert (str.in_re X (re.++ ((_ re.loop 5 5) (re.union (re.range "0" "9") (str.to_re "+"))) (str.to_re "-") ((_ re.loop 7 7) (re.union (re.range "0" "9") (str.to_re "+"))) (str.to_re "-") ((_ re.loop 1 1) (re.range "0" "9")) (str.to_re "\u{a}"))))
; /filename=[^\n]*\x2e3gp/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".3gp/i\u{a}"))))
; /\x3d\x0a$/P
(assert (str.in_re X (str.to_re "/=\u{a}/P\u{a}")))
; \x2Fpagead\x2Fads\?waitingisDownload
(assert (not (str.in_re X (str.to_re "/pagead/ads?waitingisDownload\u{a}"))))
(check-sat)

(exit)
