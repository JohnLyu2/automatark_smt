(declare-const X String)
; /\/cache\/pdf\x5Fefax\x5F\d{8,15}\.zip$/Ui
(assert (str.in_re X (re.++ (str.to_re "//cache/pdf_efax_") ((_ re.loop 8 15) (re.range "0" "9")) (str.to_re ".zip/Ui\u{a}"))))
; /filename=[^\n]*\x2ewm/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wm/i\u{a}"))))
(check-sat)
