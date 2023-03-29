(declare-const X String)
; /\x2f[a-z0-9]+\.php\?php\x3dreceipt$/Ui
(assert (str.in_re X (re.++ (str.to_re "//") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re ".php?php=receipt/Ui\u{a}"))))
(check-sat)

(exit)
