(declare-const X String)
; (\{\\f\d*)\\([^;]+;)
(assert (not (str.in_re X (re.++ (str.to_re "\u{5c}\u{a}{\u{5c}f") (re.* (re.range "0" "9")) (re.+ (re.comp (str.to_re ";"))) (str.to_re ";")))))
; RXnewads1\x2EcomSPYcom\x2Findex\.php\?tpid=
(assert (str.in_re X (str.to_re "RXnewads1.comSPYcom/index.php?tpid=\u{a}")))
; /^\/([a-zA-Z0-9-&+ ]+[^\/?]=){5}/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 5 5) (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-") (str.to_re "&") (str.to_re "+") (str.to_re " "))) (re.union (str.to_re "/") (str.to_re "?")) (str.to_re "="))) (str.to_re "/Ui\u{a}")))))
; User-Agent\x3AHost\x3ATeomaBarHost\x3AHoursHost\x3A
(assert (not (str.in_re X (str.to_re "User-Agent:Host:TeomaBarHost:HoursHost:\u{a}"))))
(check-sat)

(exit)
