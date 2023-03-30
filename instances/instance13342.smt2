(declare-const X String)
; for\x2Fproducts\x2Fspyblocs\x2FHost\x3Aocllceclbhs\x2fgth
(assert (str.in_re X (str.to_re "for/products/spyblocs/\u{13}Host:ocllceclbhs/gth\u{a}")))
; hirmvtg\x2fggqh\.kqhSurveillanceHost\x3A
(assert (not (str.in_re X (str.to_re "hirmvtg/ggqh.kqh\u{1b}Surveillance\u{13}Host:\u{a}"))))
; ^([a-zA-Z].*|[1-9].*)\.(((j|J)(p|P)(g|G))|((g|G)(i|I)(f|F)))$
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* re.allchar)) (re.++ (re.range "1" "9") (re.* re.allchar))) (str.to_re ".") (re.union (re.++ (re.union (str.to_re "j") (str.to_re "J")) (re.union (str.to_re "p") (str.to_re "P")) (re.union (str.to_re "g") (str.to_re "G"))) (re.++ (re.union (str.to_re "g") (str.to_re "G")) (re.union (str.to_re "i") (str.to_re "I")) (re.union (str.to_re "f") (str.to_re "F")))) (str.to_re "\u{a}")))))
; /\x2ephp\x3f[a-z]+=[a-fA-Z0-9]+&[a-z]+=[0-9]+$/iU
(assert (not (str.in_re X (re.++ (str.to_re "/.php?") (re.+ (re.range "a" "z")) (str.to_re "=") (re.+ (re.union (re.range "a" "f") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "&") (re.+ (re.range "a" "z")) (str.to_re "=") (re.+ (re.range "0" "9")) (str.to_re "/iU\u{a}")))))
; PortweatherX-Mailer\x3aUser-Agent\x3AToolbar
(assert (not (str.in_re X (str.to_re "PortweatherX-Mailer:\u{13}User-Agent:Toolbar\u{a}"))))
(check-sat)

(exit)
