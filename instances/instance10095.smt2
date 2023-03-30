(declare-const X String)
; /filename=[^\n]*\x2ermp/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".rmp/i\u{a}")))))
; /version\x3D[\x22\x27][^\x22\x27]{1024}/
(assert (str.in_re X (re.++ (str.to_re "/version=") (re.union (str.to_re "\u{22}") (str.to_re "'")) ((_ re.loop 1024 1024) (re.union (str.to_re "\u{22}") (str.to_re "'"))) (str.to_re "/\u{a}"))))
(check-sat)

(exit)
