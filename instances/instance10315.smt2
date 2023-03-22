(declare-const X String)
; /filename=[^\n]*\x2exslt/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".xslt/i\u{a}"))))
; (^(2014)|^(2149))\d{11}$
(assert (str.in_re X (re.++ (re.union (str.to_re "2014") (str.to_re "2149")) ((_ re.loop 11 11) (re.range "0" "9")) (str.to_re "\u{a}"))))
; ^([A-Z]|[a-z]){4} ?[0-9]{6}-?[0-9]{1}$
(assert (not (str.in_re X (re.++ ((_ re.loop 4 4) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.opt (str.to_re " ")) ((_ re.loop 6 6) (re.range "0" "9")) (re.opt (str.to_re "-")) ((_ re.loop 1 1) (re.range "0" "9")) (str.to_re "\u{a}")))))
; Windows\x2Fclient\x2FBlackreportc\.goclick\.comX-Sender\x3A
(assert (not (str.in_re X (str.to_re "Windows/client/Blackreportc.goclick.comX-Sender:\u{13}\u{a}"))))
(check-sat)
