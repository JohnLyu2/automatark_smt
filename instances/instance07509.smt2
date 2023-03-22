(declare-const X String)
; /filename=[^\n]*\x2eplf/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".plf/i\u{a}"))))
; /\.php\?action=jv\&h=\d+/Ui
(assert (str.in_re X (re.++ (str.to_re "/.php?action=jv&h=") (re.+ (re.range "0" "9")) (str.to_re "/Ui\u{a}"))))
; Softwarerequestedoffers\x2Ebullseye-network\x2Ecom
(assert (str.in_re X (str.to_re "Softwarerequestedoffers.bullseye-network.com\u{a}")))
(check-sat)
