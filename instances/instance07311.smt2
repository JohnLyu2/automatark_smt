(declare-const X String)
; Remote\x3Cchat\x3EX-Mailer\x3awww\x2eproventactics\x2ecom
(assert (not (str.in_re X (str.to_re "Remote<chat>\u{1b}X-Mailer:\u{13}www.proventactics.com\u{a}"))))
; ^(\$?)((\d{1,20})|(\d{1,2}((,?\d{3}){0,6}))|(\d{3}((,?\d{3}){0,5})))$
(assert (not (str.in_re X (re.++ (re.opt (str.to_re "$")) (re.union ((_ re.loop 1 20) (re.range "0" "9")) (re.++ ((_ re.loop 1 2) (re.range "0" "9")) ((_ re.loop 0 6) (re.++ (re.opt (str.to_re ",")) ((_ re.loop 3 3) (re.range "0" "9"))))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 0 5) (re.++ (re.opt (str.to_re ",")) ((_ re.loop 3 3) (re.range "0" "9")))))) (str.to_re "\u{a}")))))
; Host\x3a\w+Pre\x2Fta\x2FNEWS\x2FKeyloggeradfsgecoiwnfhirmvtg\x2fggqh\.kqh
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Pre/ta/NEWS/Keyloggeradfsgecoiwnf\u{1b}hirmvtg/ggqh.kqh\u{1b}\u{a}"))))
; ^([0-9A-F]{2}[:-]){5}([0-9A-F]{2})$
(assert (str.in_re X (re.++ ((_ re.loop 5 5) (re.++ ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "F"))) (re.union (str.to_re ":") (str.to_re "-")))) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to_re "\u{a}"))))
; /\x2emswmm([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.mswmm") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
(check-sat)

(exit)
