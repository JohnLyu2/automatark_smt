(declare-const X String)
; /filename=[^\n]*\x2epdf/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pdf/i\u{a}")))))
; /\x3F[0-9a-z]{32}D/U
(assert (not (str.in_re X (re.++ (str.to_re "/?") ((_ re.loop 32 32) (re.union (re.range "0" "9") (re.range "a" "z"))) (str.to_re "D/U\u{a}")))))
; engineResultUser-Agent\x3A
(assert (not (str.in_re X (str.to_re "engineResultUser-Agent:\u{a}"))))
; /\/stat_svc\/$/U
(assert (not (str.in_re X (str.to_re "//stat_svc//U\u{a}"))))
; ^\[0-9]{4}\-\[0-9]{2}\-\[0-9]{2}$
(assert (str.in_re X (re.++ (str.to_re "[0-9") ((_ re.loop 4 4) (str.to_re "]")) (str.to_re "-[0-9") ((_ re.loop 2 2) (str.to_re "]")) (str.to_re "-[0-9") ((_ re.loop 2 2) (str.to_re "]")) (str.to_re "\u{a}"))))
(check-sat)
