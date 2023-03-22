(declare-const X String)
; /\x2ecov([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.cov") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; ^\d$
(assert (str.in_re X (re.++ (re.range "0" "9") (str.to_re "\u{a}"))))
; stats\x2edrivecleaner\x2ecomExciteasdbiz\x2Ebiz
(assert (str.in_re X (str.to_re "stats.drivecleaner.com\u{13}Exciteasdbiz.biz\u{a}")))
(check-sat)
