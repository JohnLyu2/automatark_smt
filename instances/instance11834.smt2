(declare-const X String)
; SPY\s\x5BStaticHost\x3AFROM\x3Acs\x2Eshopperreports\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "SPY") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "[StaticHost:FROM:cs.shopperreports.com\u{a}"))))
; Host\x3AtoUser-Agent\x3AClientsConnected-
(assert (not (str.in_re X (str.to_re "Host:toUser-Agent:ClientsConnected-\u{a}"))))
(check-sat)

(exit)
