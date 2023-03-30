(declare-const X String)
; MSNLOGOVNUsertooffers\x2Ebullseye-network\x2Ecom
(assert (not (str.in_re X (str.to_re "MSNLOGOVNUsertooffers.bullseye-network.com\u{a}"))))
; /filename=[^\n]*\x2eurl/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".url/i\u{a}")))))
(check-sat)

(exit)
