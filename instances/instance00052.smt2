(declare-const X String)
; Referer\x3AUser-Agent\x3AFrom\x3AUser-Agent\x3Aadfsgecoiwnf
(assert (not (str.in_re X (str.to_re "Referer:User-Agent:From:User-Agent:adfsgecoiwnf\u{1b}\u{a}"))))
(check-sat)

(exit)
