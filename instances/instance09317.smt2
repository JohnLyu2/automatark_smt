(declare-const X String)
; /filename=[^\n]*\x2efdf/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".fdf/i\u{a}"))))
; /filename=[^\n]*\x2ecis/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".cis/i\u{a}")))))
; /filename=p50[a-z0-9]{9}[0-9]{12}\.pdf/H
(assert (str.in_re X (re.++ (str.to_re "/filename=p50") ((_ re.loop 9 9) (re.union (re.range "a" "z") (re.range "0" "9"))) ((_ re.loop 12 12) (re.range "0" "9")) (str.to_re ".pdf/H\u{a}"))))
; /setInterval\s*\x28[^\x29]+\x2efocus\x28\x29/smi
(assert (not (str.in_re X (re.++ (str.to_re "/setInterval") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "(") (re.+ (re.comp (str.to_re ")"))) (str.to_re ".focus()/smi\u{a}")))))
(check-sat)

(exit)
