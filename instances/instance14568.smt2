(declare-const X String)
; ^[A-Z]{1,3}\d{6}$
(assert (str.in_re X (re.++ ((_ re.loop 1 3) (re.range "A" "Z")) ((_ re.loop 6 6) (re.range "0" "9")) (str.to_re "\u{a}"))))
; pjpoptwql\x2frlnj\d+waiting\d+ocllceclbhs\x2fgth\w+gdvsotuqwsg\x2fdxt\.hd^User-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "pjpoptwql/rlnj") (re.+ (re.range "0" "9")) (str.to_re "waiting") (re.+ (re.range "0" "9")) (str.to_re "ocllceclbhs/gth") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "gdvsotuqwsg/dxt.hdUser-Agent:\u{a}")))))
(check-sat)
