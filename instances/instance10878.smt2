(declare-const X String)
; gdvsotuqwsg\x2fdxt\.hdFrom\x3ahirmvtg\x2fggqh\.kqh
(assert (not (str.in_re X (str.to_re "gdvsotuqwsg/dxt.hdFrom:hirmvtg/ggqh.kqh\u{1b}\u{a}"))))
; /\x2ert([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.rt") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
(check-sat)

(exit)
