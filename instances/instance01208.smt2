(declare-const X String)
; /^\/\d\x2eexe/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//") (re.range "0" "9") (str.to_re ".exe/Ui\u{a}")))))
(check-sat)
