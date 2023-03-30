(declare-const X String)
; \x7D\x7BTrojan\x3Abacktrust\x2EcomHost\x3Apjpoptwql\x2frlnj
(assert (not (str.in_re X (str.to_re "}{Trojan:backtrust.comHost:pjpoptwql/rlnj\u{a}"))))
; ^\d{9}[\d|X]$
(assert (str.in_re X (re.++ ((_ re.loop 9 9) (re.range "0" "9")) (re.union (re.range "0" "9") (str.to_re "|") (str.to_re "X")) (str.to_re "\u{a}"))))
(check-sat)

(exit)
