(declare-const X String)
; ^(([0]?[0-5][0-9]|[0-9]):([0-5][0-9]))$
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") (re.union (re.++ (re.opt (str.to_re "0")) (re.range "0" "5") (re.range "0" "9")) (re.range "0" "9")) (str.to_re ":") (re.range "0" "5") (re.range "0" "9")))))
; Host\x3a\w+Pre\x2Fta\x2FNEWS\x2FKeyloggeradfsgecoiwnfhirmvtg\x2fggqh\.kqh
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Pre/ta/NEWS/Keyloggeradfsgecoiwnf\u{1b}hirmvtg/ggqh.kqh\u{1b}\u{a}")))))
; Strip-Player.*MyAgent.*\x2Fnewsurfer4\x2F
(assert (not (str.in_re X (re.++ (str.to_re "Strip-Player\u{1b}") (re.* re.allchar) (str.to_re "MyAgent") (re.* re.allchar) (str.to_re "/newsurfer4/\u{a}")))))
(check-sat)

(exit)
