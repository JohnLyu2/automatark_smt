(declare-const X String)
; ^(([0-9]{5})*-([0-9]{4}))|([0-9]{5})$
(assert (not (str.in_re X (re.union (re.++ (re.* ((_ re.loop 5 5) (re.range "0" "9"))) (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to_re "\u{a}"))))))
; /\x2ecov([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.cov") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; Referer\x3A.*notification.*qisezhin\x2fiqor\.ymspasServer\x3a
(assert (not (str.in_re X (re.++ (str.to_re "Referer:") (re.* re.allchar) (str.to_re "notification\u{13}") (re.* re.allchar) (str.to_re "qisezhin/iqor.ym\u{13}spasServer:\u{a}")))))
; NavExcel\s+dist\x2Eatlas\x2Dia\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "NavExcel") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "dist.atlas-ia.com\u{a}")))))
; /filename=[^\n]*\x2em4b/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".m4b/i\u{a}")))))
(check-sat)
