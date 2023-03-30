(declare-const X String)
; ^[\w ]{0,}$
(assert (str.in_re X (re.++ (re.* (re.union (str.to_re " ") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{a}"))))
; Iterenet\s+www\x2Emirarsearch\x2EcomHost\x3A
(assert (str.in_re X (re.++ (str.to_re "Iterenet") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.mirarsearch.comHost:\u{a}"))))
; HBand,\sHost\x3A[^\n\r]*lnzzlnbk\x2fpkrm\.fin
(assert (not (str.in_re X (re.++ (str.to_re "HBand,") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Host:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "lnzzlnbk/pkrm.fin\u{a}")))))
(check-sat)

(exit)
