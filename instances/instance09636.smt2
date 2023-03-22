(declare-const X String)
; Onetrustyfiles\x2EcomOverSpyzopabora\x2Einfo
(assert (str.in_re X (str.to_re "Onetrustyfiles.comOverSpyzopabora.info\u{a}")))
; /filename=[^\n]*\x2emaplet/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".maplet/i\u{a}"))))
(check-sat)
