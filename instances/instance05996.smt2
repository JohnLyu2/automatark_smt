(declare-const X String)
; ^[A-Za-z0-9_]+$
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "_"))) (str.to_re "\u{a}")))))
; Toolbar\x2Fimages\x2Fnocache\x2Ftr\x2Fgca\x2Fm\.gif\?
(assert (not (str.in_re X (str.to_re "Toolbar/images/nocache/tr/gca/m.gif?\u{a}"))))
(check-sat)

(exit)
