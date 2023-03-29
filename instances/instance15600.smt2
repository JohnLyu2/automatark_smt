(declare-const X String)
; ^([A-Z]{2}?(\d{7}))$
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") ((_ re.loop 2 2) (re.range "A" "Z")) ((_ re.loop 7 7) (re.range "0" "9"))))))
; /filename=[^\n]*\x2epaq8o/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".paq8o/i\u{a}"))))
; /filename=[^\n]*\x2eflac/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".flac/i\u{a}")))))
; [+]?[ ]?\d{1,3}[ ]?\d{1,3}[- ]?\d{4}[- ]?\d{4}
(assert (not (str.in_re X (re.++ (re.opt (str.to_re "+")) (re.opt (str.to_re " ")) ((_ re.loop 1 3) (re.range "0" "9")) (re.opt (str.to_re " ")) ((_ re.loop 1 3) (re.range "0" "9")) (re.opt (re.union (str.to_re "-") (str.to_re " "))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to_re "-") (str.to_re " "))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}")))))
; Filtered\s+Yeah\!\d+HXDownloadasdbiz\x2EbizUser-Agent\x3Awww\x2Eezula\x2EcomUser-Agent\x3aetbuviaebe\x2feqv\.bvv
(assert (str.in_re X (re.++ (str.to_re "Filtered") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Yeah!") (re.+ (re.range "0" "9")) (str.to_re "HXDownloadasdbiz.bizUser-Agent:www.ezula.comUser-Agent:etbuviaebe/eqv.bvv\u{a}"))))
(check-sat)

(exit)
