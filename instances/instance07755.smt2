(declare-const X String)
; Center\w+Host\x3aiz=iMeshBar
(assert (not (str.in_re X (re.++ (str.to_re "Center") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Host:iz=iMeshBar\u{a}")))))
; ^(\+{1,2}?([0-9]{2,4}|\([0-9]{2,4}\))?(-|\s)?)?[0-9]{2,3}(-|\s)?[0-9\-]{5,10}$
(assert (not (str.in_re X (re.++ (re.opt (re.++ ((_ re.loop 1 2) (str.to_re "+")) (re.opt (re.union ((_ re.loop 2 4) (re.range "0" "9")) (re.++ (str.to_re "(") ((_ re.loop 2 4) (re.range "0" "9")) (str.to_re ")")))) (re.opt (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))) ((_ re.loop 2 3) (re.range "0" "9")) (re.opt (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 5 10) (re.union (re.range "0" "9") (str.to_re "-"))) (str.to_re "\u{a}")))))
(check-sat)

(exit)
