(declare-const X String)
; [^A-Za-z0-9]
(assert (str.in_re X (re.++ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9")) (str.to_re "\u{a}"))))
; Guarded\s+ready\w+PARSERHost\x3aA-311ServerUser-Agent\x3Ascn\x2emystoretoolbar\x2ecom
(assert (not (str.in_re X (re.++ (str.to_re "Guarded") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ready") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "PARSERHost:A-311ServerUser-Agent:scn.mystoretoolbar.com\u{13}\u{a}")))))
(check-sat)
