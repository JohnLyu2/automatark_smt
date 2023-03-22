(declare-const X String)
; /\x2ewmv([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.wmv") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; /\/loader\.cpl$/U
(assert (not (str.in_re X (str.to_re "//loader.cpl/U\u{a}"))))
; iz=Referer\x3Aoffers\x2Ebullseye-network\x2Ecom
(assert (not (str.in_re X (str.to_re "iz=Referer:offers.bullseye-network.com\u{a}"))))
(check-sat)
