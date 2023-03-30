(declare-const X String)
; ^(\d{3}|\d{4})[-](\d{5})$
(assert (not (str.in_re X (re.++ (re.union ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9"))) (str.to_re "-") ((_ re.loop 5 5) (re.range "0" "9")) (str.to_re "\u{a}")))))
; /\x2efli([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.fli") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; (CY-?)?[0-9]{8}[A-Z]
(assert (str.in_re X (re.++ (re.opt (re.++ (str.to_re "CY") (re.opt (str.to_re "-")))) ((_ re.loop 8 8) (re.range "0" "9")) (re.range "A" "Z") (str.to_re "\u{a}"))))
; /filename=[^\n]*\x2ejmh/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".jmh/i\u{a}")))))
; www\x2Esogou\x2Ecomix=WebsiteHost\x3aWeb-Mail
(assert (not (str.in_re X (str.to_re "www.sogou.comix=WebsiteHost:Web-Mail\u{a}"))))
(check-sat)

(exit)
