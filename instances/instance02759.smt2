(declare-const X String)
; \x7D\x7BTrojan\x3Abacktrust\x2EcomHost\x3Apjpoptwql\x2frlnj
(assert (not (str.in_re X (str.to_re "}{Trojan:backtrust.comHost:pjpoptwql/rlnj\u{a}"))))
(check-sat)

(exit)
