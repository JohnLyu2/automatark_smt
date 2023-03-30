(declare-const X String)
; /\.php\?setup=d\&s=\d+\&r=\d+/Ui
(assert (not (str.in_re X (re.++ (str.to_re "/.php?setup=d&s=") (re.+ (re.range "0" "9")) (str.to_re "&r=") (re.+ (re.range "0" "9")) (str.to_re "/Ui\u{a}")))))
; gdvsotuqwsg\x2fdxt\.hdFrom\x3ahirmvtg\x2fggqh\.kqh
(assert (not (str.in_re X (str.to_re "gdvsotuqwsg/dxt.hdFrom:hirmvtg/ggqh.kqh\u{1b}\u{a}"))))
; /filename=[^\n]*\x2ebmp/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".bmp/i\u{a}"))))
(check-sat)

(exit)
