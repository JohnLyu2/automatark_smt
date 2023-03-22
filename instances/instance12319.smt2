(declare-const X String)
; /^\d+O\d+\.jsp\?[a-z0-9\x3d\x2b\x2f]{20}/iR
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.+ (re.range "0" "9")) (str.to_re "O") (re.+ (re.range "0" "9")) (str.to_re ".jsp?") ((_ re.loop 20 20) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "=") (str.to_re "+") (str.to_re "/"))) (str.to_re "/iR\u{a}")))))
; ([0-9]{1,2}[:][0-9]{1,2}[:]{0,2}[0-9]{0,2}[\s]{0,}[AMPamp]{0,2})
(assert (str.in_re X (re.++ (str.to_re "\u{a}") ((_ re.loop 1 2) (re.range "0" "9")) (str.to_re ":") ((_ re.loop 1 2) (re.range "0" "9")) ((_ re.loop 0 2) (str.to_re ":")) ((_ re.loop 0 2) (re.range "0" "9")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 0 2) (re.union (str.to_re "A") (str.to_re "M") (str.to_re "P") (str.to_re "a") (str.to_re "m") (str.to_re "p"))))))
; LOG\swww\x2Esearchwords\x2EcomHost\x3A
(assert (str.in_re X (re.++ (str.to_re "LOG") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.searchwords.comHost:\u{a}"))))
; /filename=[^\n]*\x2ewrf/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wrf/i\u{a}"))))
; Subject\x3A.*www\x2Ewebcruiser\x2Ecc\w+www\x2Etopadwarereviews\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "Subject:") (re.* re.allchar) (str.to_re "www.webcruiser.cc") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "www.topadwarereviews.com\u{a}"))))
(check-sat)
