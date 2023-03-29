(declare-const X String)
; thesearchresltLoggerHost\x3ABetaHWAEHost\x3Ais
(assert (str.in_re X (str.to_re "thesearchresltLoggerHost:BetaHWAEHost:is\u{a}")))
; ^[ \t]+|[ \t]+$
(assert (str.in_re X (re.union (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}"))) (re.++ (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}"))) (str.to_re "\u{a}")))))
; Host\x3A\d+rprpgbnrppb\x2fci[^\n\r]*RXFilteredDmInf\x5E
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "rprpgbnrppb/ci") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "RXFilteredDmInf^\u{a}"))))
(check-sat)

(exit)
