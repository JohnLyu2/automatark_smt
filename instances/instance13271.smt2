(declare-const X String)
; Host\x3A\s+\.ico\s+Host\x3Aorigin\x3Dsidefind
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ".ico") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:origin=sidefind\u{a}")))))
; /MODE\sd?u?n?\x7b[AU]\x5c[LD]\x5c(86|64)\x5c\w{0,8}\x5c\w{2,16}\x7d[a-z]{8}\s\x2BpiwksT\x2Dx\x0D\x0A/i
(assert (str.in_re X (re.++ (str.to_re "/MODE") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (re.opt (str.to_re "d")) (re.opt (str.to_re "u")) (re.opt (str.to_re "n")) (str.to_re "{") (re.union (str.to_re "A") (str.to_re "U")) (str.to_re "\u{5c}") (re.union (str.to_re "L") (str.to_re "D")) (str.to_re "\u{5c}") (re.union (str.to_re "86") (str.to_re "64")) (str.to_re "\u{5c}") ((_ re.loop 0 8) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{5c}") ((_ re.loop 2 16) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "}") ((_ re.loop 8 8) (re.range "a" "z")) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "+piwksT-x\u{d}\u{a}/i\u{a}"))))
; ^((0[1-9])|(1[0-2]))[\/\.\-]*((0[8-9])|(1[1-9]))$
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (re.* (re.union (str.to_re "/") (str.to_re ".") (str.to_re "-"))) (re.union (re.++ (str.to_re "0") (re.range "8" "9")) (re.++ (str.to_re "1") (re.range "1" "9"))) (str.to_re "\u{a}"))))
; Host\x3ATest\x3C\x2Fchat\x3EResultsSubject\x3A
(assert (str.in_re X (str.to_re "Host:Test</chat>ResultsSubject:\u{a}")))
; ^([EV])?\d{3,3}(\.\d{1,2})?$
(assert (not (str.in_re X (re.++ (re.opt (re.union (str.to_re "E") (str.to_re "V"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to_re "\u{a}")))))
(check-sat)
