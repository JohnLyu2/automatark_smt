(declare-const X String)
; /filename=[^\n]*\x2epor/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".por/i\u{a}"))))
; \\$\\d+[.]?\\d*
(assert (not (str.in_re X (re.++ (str.to_re "\u{5c}\u{5c}") (re.+ (str.to_re "d")) (re.opt (str.to_re ".")) (str.to_re "\u{5c}") (re.* (str.to_re "d")) (str.to_re "\u{a}")))))
; ^([0-9]*\,?[0-9]+|[0-9]+\,?[0-9]*)?$
(assert (str.in_re X (re.++ (re.opt (re.union (re.++ (re.* (re.range "0" "9")) (re.opt (str.to_re ",")) (re.+ (re.range "0" "9"))) (re.++ (re.+ (re.range "0" "9")) (re.opt (str.to_re ",")) (re.* (re.range "0" "9"))))) (str.to_re "\u{a}"))))
; /\/cache\/pdf\x5Fefax\x5F\d{8,15}\.zip$/Ui
(assert (str.in_re X (re.++ (str.to_re "//cache/pdf_efax_") ((_ re.loop 8 15) (re.range "0" "9")) (str.to_re ".zip/Ui\u{a}"))))
(check-sat)

(exit)
