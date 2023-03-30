(declare-const X String)
; pjpoptwql\x2frlnj\d+waiting\d+ocllceclbhs\x2fgth\w+gdvsotuqwsg\x2fdxt\.hd^User-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "pjpoptwql/rlnj") (re.+ (re.range "0" "9")) (str.to_re "waiting") (re.+ (re.range "0" "9")) (str.to_re "ocllceclbhs/gth") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "gdvsotuqwsg/dxt.hdUser-Agent:\u{a}")))))
; \s*("[^"]+"|[^ ,]+)
(assert (str.in_re X (re.++ (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (re.++ (str.to_re "\u{22}") (re.+ (re.comp (str.to_re "\u{22}"))) (str.to_re "\u{22}")) (re.+ (re.union (str.to_re " ") (str.to_re ",")))) (str.to_re "\u{a}"))))
; /filename=[^\n]*\x2ermf/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".rmf/i\u{a}")))))
; ^[1-9][0-9]{0,2}$
(assert (not (str.in_re X (re.++ (re.range "1" "9") ((_ re.loop 0 2) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)

(exit)
