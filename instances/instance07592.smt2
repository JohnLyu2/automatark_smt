(declare-const X String)
; User-Agent\x3AHost\x3a\x22The
(assert (str.in_re X (str.to_re "User-Agent:Host:\u{22}The\u{a}")))
; /filename=[^\n]*\x2em4p/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".m4p/i\u{a}")))))
; Host\x3a\w+Pre\x2Fta\x2FNEWS\x2FKeyloggeradfsgecoiwnfhirmvtg\x2fggqh\.kqh
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Pre/ta/NEWS/Keyloggeradfsgecoiwnf\u{1b}hirmvtg/ggqh.kqh\u{1b}\u{a}")))))
(check-sat)

(exit)
