(declare-const X String)
; [:]{1}[-~+o]?[)>]+
(assert (not (str.in_re X (re.++ ((_ re.loop 1 1) (str.to_re ":")) (re.opt (re.union (str.to_re "-") (str.to_re "~") (str.to_re "+") (str.to_re "o"))) (re.+ (re.union (str.to_re ")") (str.to_re ">"))) (str.to_re "\u{a}")))))
; /^From\x3a[^\r\n]*SpyBuddy/smi
(assert (str.in_re X (re.++ (str.to_re "/From:") (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "SpyBuddy/smi\u{a}"))))
; IPOblivionhoroscopefowclxccdxn\x2fuxwn\.ddy
(assert (str.in_re X (str.to_re "IPOblivionhoroscopefowclxccdxn/uxwn.ddy\u{a}")))
; Subject\x3areportGatorNavExcel
(assert (str.in_re X (str.to_re "Subject:reportGatorNavExcel\u{a}")))
(check-sat)

(exit)
