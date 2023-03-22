(declare-const X String)
; gdvsotuqwsg\x2fdxt\.hdFrom\x3ahirmvtg\x2fggqh\.kqh
(assert (str.in_re X (str.to_re "gdvsotuqwsg/dxt.hdFrom:hirmvtg/ggqh.kqh\u{1b}\u{a}")))
; /filename=[^\n]*\x2evwr/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".vwr/i\u{a}"))))
(check-sat)
