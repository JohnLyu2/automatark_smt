(declare-const X String)
; \x7D\x7BTrojan\x3Abacktrust\x2EcomHost\x3Apjpoptwql\x2frlnj
(assert (str.in_re X (str.to_re "}{Trojan:backtrust.comHost:pjpoptwql/rlnj\u{a}")))
; ^(([0]?[1-9]|1[0-2])(:)([0-5][0-9]))$
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (str.to_re ":") (re.range "0" "5") (re.range "0" "9")))))
; /filename=[^\n]*\x2epict/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pict/i\u{a}"))))
; /filename=[^\n]*\x2eapk/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".apk/i\u{a}"))))
(check-sat)
