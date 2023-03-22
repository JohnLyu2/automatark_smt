(declare-const X String)
; /filename=[^\n]*\x2ewebm/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".webm/i\u{a}"))))
; MSNLOGOVNUsertooffers\x2Ebullseye-network\x2Ecom
(assert (not (str.in_re X (str.to_re "MSNLOGOVNUsertooffers.bullseye-network.com\u{a}"))))
(check-sat)
