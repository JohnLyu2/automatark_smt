(declare-const X String)
; /filename=[^\n]*\x2ezip/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".zip/i\u{a}")))))
; Subject\x3AEnTrYExplorer\x2APORT2\x2AHost\x3A
(assert (not (str.in_re X (str.to_re "Subject:EnTrYExplorer*PORT2*Host:\u{a}"))))
; 1\-extreme\x2Ebizasdbiz\x2Ebizfrom\x7croogoo\x7cCurrentiOpus
(assert (not (str.in_re X (str.to_re "1-extreme.bizasdbiz.bizfrom|roogoo|CurrentiOpus\u{a}"))))
; /^\/f(\/[^\x2f]+)?\/14\d{8}(\/\d{9,10})?(\/\d)+(\/x[a-f0-9]+(\x3b\d)+?)?$/U
(assert (not (str.in_re X (re.++ (str.to_re "//f") (re.opt (re.++ (str.to_re "/") (re.+ (re.comp (str.to_re "/"))))) (str.to_re "/14") ((_ re.loop 8 8) (re.range "0" "9")) (re.opt (re.++ (str.to_re "/") ((_ re.loop 9 10) (re.range "0" "9")))) (re.+ (re.++ (str.to_re "/") (re.range "0" "9"))) (re.opt (re.++ (str.to_re "/x") (re.+ (re.union (re.range "a" "f") (re.range "0" "9"))) (re.+ (re.++ (str.to_re ";") (re.range "0" "9"))))) (str.to_re "/U\u{a}")))))
(check-sat)
