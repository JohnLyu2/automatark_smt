(declare-const X String)
; User-Agent\x3AFrom\x3Awww\x2Eonlinecasinoextra\x2EcomHost\x3A
(assert (str.in_re X (str.to_re "User-Agent:From:www.onlinecasinoextra.comHost:\u{a}")))
(check-sat)

(exit)
