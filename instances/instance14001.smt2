(declare-const X String)
; /filename=[^\n]*\x2eets/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".ets/i\u{a}")))))
; Host\x3AAddressDaemonUser-Agent\x3AUser-Agent\x3a
(assert (not (str.in_re X (str.to_re "Host:AddressDaemonUser-Agent:User-Agent:\u{a}"))))
; /^\/\d{8,11}\/1[34]\d{8}\.pdf$/U
(assert (not (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 8 11) (re.range "0" "9")) (str.to_re "/1") (re.union (str.to_re "3") (str.to_re "4")) ((_ re.loop 8 8) (re.range "0" "9")) (str.to_re ".pdf/U\u{a}")))))
(check-sat)
