(declare-const X String)
; /\/install\.asp\?mac=[A-F\d]{12}\x26mode/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//install.asp?mac=") ((_ re.loop 12 12) (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to_re "&mode/Ui\u{a}")))))
(check-sat)

(exit)
