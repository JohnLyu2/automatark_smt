(declare-const X String)
; User-Agent\x3A\d+PortaURLSSKC\x7croogoo\x7c\.cfgmPOPrtCUSTOMPal
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "PortaURLSSKC|roogoo|.cfgmPOPrtCUSTOMPal\u{a}")))))
(check-sat)
