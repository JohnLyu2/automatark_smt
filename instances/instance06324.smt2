(declare-const X String)
; User-Agent\x3aetbuviaebe\x2feqv\.bvv
(assert (str.in_re X (str.to_re "User-Agent:etbuviaebe/eqv.bvv\u{a}")))
; /\/software\x2ephp\x3f[0-9]{15,}/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//software.php?/Ui\u{a}") ((_ re.loop 15 15) (re.range "0" "9")) (re.* (re.range "0" "9"))))))
(check-sat)
