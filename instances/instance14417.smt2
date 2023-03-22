(declare-const X String)
; /z\x3D[A-Z0-9%]{700}/i
(assert (str.in_re X (re.++ (str.to_re "/z=") ((_ re.loop 700 700) (re.union (re.range "A" "Z") (re.range "0" "9") (str.to_re "%"))) (str.to_re "/i\u{a}"))))
; /\x3fsv\x3d\d{1,3}\x26tq\x3d/smiU
(assert (str.in_re X (re.++ (str.to_re "/?sv=") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re "&tq=/smiU\u{a}"))))
; ^[A-Za-z]{1}[0-9]{7}$
(assert (not (str.in_re X (re.++ ((_ re.loop 1 1) (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 7 7) (re.range "0" "9")) (str.to_re "\u{a}")))))
; Server\x00\s+SbAts\s+versionetbuviaebe\x2feqv\.bvv
(assert (str.in_re X (re.++ (str.to_re "Server\u{0}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "SbAts") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "versionetbuviaebe/eqv.bvv\u{a}"))))
(check-sat)
