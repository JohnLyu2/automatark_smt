(declare-const X String)
; ^([01][012]|0[1-9])/([0-2][0-9]|[3][0-1])/([0-9][0-9][0-9][0-9])$
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.union (str.to_re "0") (str.to_re "1")) (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2"))) (re.++ (str.to_re "0") (re.range "1" "9"))) (str.to_re "/") (re.union (re.++ (re.range "0" "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.range "0" "1"))) (str.to_re "/\u{a}") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9")))))
; OS-www\x2Etopadwarereviews\x2Ecommedia\x2Etop-banners\x2EcomSuccessfully\x21
(assert (not (str.in_re X (str.to_re "OS-www.topadwarereviews.commedia.top-banners.comSuccessfully!\u{a}"))))
; \[DRIVE\w+updates[^\n\r]*\x22StarLogger\x22User-Agent\x3AJMailUser-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "[DRIVE") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "updates") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "\u{22}StarLogger\u{22}User-Agent:JMailUser-Agent:\u{a}"))))
; /\x2Edocument\x2EinsertBefore\s*\x28[^\x2C]+\x29/smi
(assert (not (str.in_re X (re.++ (str.to_re "/.document.insertBefore") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "(") (re.+ (re.comp (str.to_re ","))) (str.to_re ")/smi\u{a}")))))
(check-sat)
