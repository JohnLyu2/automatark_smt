(declare-const X String)
; User-Agent\x3A\d+PortaURLSSKC\x7croogoo\x7c\.cfgmPOPrtCUSTOMPal
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "PortaURLSSKC|roogoo|.cfgmPOPrtCUSTOMPal\u{a}")))))
; From\x3A\w+SoftActivity\d+
(assert (not (str.in_re X (re.++ (str.to_re "From:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "SoftActivity\u{13}") (re.+ (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
