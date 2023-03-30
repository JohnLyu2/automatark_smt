(declare-const X String)
; ^((8|\+7)[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{7,10}$
(assert (not (str.in_re X (re.++ (re.opt (re.++ (re.union (str.to_re "8") (str.to_re "+7")) (re.opt (re.union (str.to_re "-") (str.to_re " "))))) (re.opt (re.++ (re.opt (str.to_re "(")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to_re ")")) (re.opt (re.union (str.to_re "-") (str.to_re " "))))) ((_ re.loop 7 10) (re.union (re.range "0" "9") (str.to_re "-") (str.to_re " "))) (str.to_re "\u{a}")))))
; Black\s+Warezxmlns\x3A%3flinkautomatici\x2EcomSubject\x3aHost\x3A
(assert (str.in_re X (re.++ (str.to_re "Black") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Warezxmlns:%3flinkautomatici.comSubject:Host:\u{a}"))))
; /filename=[^\n]*\x2eotf/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".otf/i\u{a}"))))
; actualnames\.comclient\x2Ebaigoo\x2Ecomzzzvmkituktgr\x2fetiexpsp2-InformationHost\x3A
(assert (not (str.in_re X (str.to_re "actualnames.comclient.baigoo.comzzzvmkituktgr/etiexpsp2-InformationHost:\u{a}"))))
; /\/cache\/pdf\x5Fefax\x5F\d{8,15}\.zip$/Ui
(assert (str.in_re X (re.++ (str.to_re "//cache/pdf_efax_") ((_ re.loop 8 15) (re.range "0" "9")) (str.to_re ".zip/Ui\u{a}"))))
(check-sat)

(exit)
