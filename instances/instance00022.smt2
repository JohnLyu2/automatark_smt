(declare-const X String)
; Host\x3AfromZC-Bridgev\x2Exml\x2FNFO\x2CRegistered
(assert (not (str.in_re X (str.to_re "Host:fromZC-Bridgev.xml/NFO,Registered\u{a}"))))
(check-sat)

(exit)
