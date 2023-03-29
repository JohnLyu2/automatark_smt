(declare-const X String)
; Host\x3Aact=Host\x3aUser-Agent\x3AUser-Agent\x3ALiteselect\x2FGet
(assert (str.in_re X (str.to_re "Host:act=Host:User-Agent:User-Agent:Liteselect/Get\u{a}")))
; pjpoptwql\x2frlnj\d+waiting\d+ocllceclbhs\x2fgth\w+gdvsotuqwsg\x2fdxt\.hd^User-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "pjpoptwql/rlnj") (re.+ (re.range "0" "9")) (str.to_re "waiting") (re.+ (re.range "0" "9")) (str.to_re "ocllceclbhs/gth") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "gdvsotuqwsg/dxt.hdUser-Agent:\u{a}")))))
(check-sat)

(exit)
