(declare-const X String)
; /\x28\x3f\x3d[^)]{300}/
(assert (str.in_re X (re.++ (str.to_re "/(?=") ((_ re.loop 300 300) (re.comp (str.to_re ")"))) (str.to_re "/\u{a}"))))
(check-sat)

(exit)
