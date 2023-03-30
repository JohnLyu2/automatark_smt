(declare-const X String)
; /Dr[.]?|Phd[.]?|MBA/i
(assert (str.in_re X (re.union (re.++ (str.to_re "/Dr") (re.opt (str.to_re "."))) (re.++ (str.to_re "Phd") (re.opt (str.to_re "."))) (str.to_re "MBA/i\u{a}"))))
; ((DK|FI|HU|LU|MT|SI)(-)?\d{8})|((BE|EE|DE|EL|LT|PT)(-)?\d{9})|((PL|SK)(-)?\d{10})|((IT|LV)(-)?\d{11})|((LT|SE)(-)?\d{12})|(AT(-)?U\d{8})|(CY(-)?\d{8}[A-Z])|(CZ(-)?\d{8,10})|(FR(-)?[\dA-HJ-NP-Z]{2}\d{9})|(IE(-)?\d[A-Z\d]\d{5}[A-Z])|(NL(-)?\d{9}B\d{2})|(ES(-)?[A-Z\d]\d{7}[A-Z\d])
(assert (not (str.in_re X (re.union (re.++ (re.union (str.to_re "DK") (str.to_re "FI") (str.to_re "HU") (str.to_re "LU") (str.to_re "MT") (str.to_re "SI")) (re.opt (str.to_re "-")) ((_ re.loop 8 8) (re.range "0" "9"))) (re.++ (re.union (str.to_re "BE") (str.to_re "EE") (str.to_re "DE") (str.to_re "EL") (str.to_re "LT") (str.to_re "PT")) (re.opt (str.to_re "-")) ((_ re.loop 9 9) (re.range "0" "9"))) (re.++ (re.union (str.to_re "PL") (str.to_re "SK")) (re.opt (str.to_re "-")) ((_ re.loop 10 10) (re.range "0" "9"))) (re.++ (re.union (str.to_re "IT") (str.to_re "LV")) (re.opt (str.to_re "-")) ((_ re.loop 11 11) (re.range "0" "9"))) (re.++ (re.union (str.to_re "LT") (str.to_re "SE")) (re.opt (str.to_re "-")) ((_ re.loop 12 12) (re.range "0" "9"))) (re.++ (str.to_re "AT") (re.opt (str.to_re "-")) (str.to_re "U") ((_ re.loop 8 8) (re.range "0" "9"))) (re.++ (str.to_re "CY") (re.opt (str.to_re "-")) ((_ re.loop 8 8) (re.range "0" "9")) (re.range "A" "Z")) (re.++ (str.to_re "CZ") (re.opt (str.to_re "-")) ((_ re.loop 8 10) (re.range "0" "9"))) (re.++ (str.to_re "FR") (re.opt (str.to_re "-")) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "H") (re.range "J" "N") (re.range "P" "Z"))) ((_ re.loop 9 9) (re.range "0" "9"))) (re.++ (str.to_re "IE") (re.opt (str.to_re "-")) (re.range "0" "9") (re.union (re.range "A" "Z") (re.range "0" "9")) ((_ re.loop 5 5) (re.range "0" "9")) (re.range "A" "Z")) (re.++ (str.to_re "NL") (re.opt (str.to_re "-")) ((_ re.loop 9 9) (re.range "0" "9")) (str.to_re "B") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "\u{a}ES") (re.opt (str.to_re "-")) (re.union (re.range "A" "Z") (re.range "0" "9")) ((_ re.loop 7 7) (re.range "0" "9")) (re.union (re.range "A" "Z") (re.range "0" "9")))))))
; /filename=[^\n]*\x2eets/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".ets/i\u{a}")))))
; /filename=[^\n]*\x2echm/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".chm/i\u{a}"))))
(check-sat)

(exit)
