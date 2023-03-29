(declare-const X String)
; /filename=[^\n]*\x2ef4p/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".f4p/i\u{a}")))))
; Host\x3A\x2Fta\x2FNEWS\x2Fyayad\x2Ecom
(assert (not (str.in_re X (str.to_re "Host:/ta/NEWS/yayad.com\u{13}\u{a}"))))
; Softwarerequestedoffers\x2Ebullseye-network\x2Ecom
(assert (not (str.in_re X (str.to_re "Softwarerequestedoffers.bullseye-network.com\u{a}"))))
; ^(\+[0-9]{2,}[0-9]{4,}[0-9]*)(x?[0-9]{1,})?$
(assert (str.in_re X (re.++ (re.opt (re.++ (re.opt (str.to_re "x")) (re.+ (re.range "0" "9")))) (str.to_re "\u{a}+") (re.* (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9")) (re.* (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9")) (re.* (re.range "0" "9")))))
(check-sat)

(exit)
