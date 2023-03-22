(declare-const X String)
; /\/setup_b\.asp\?prj=\d\x26pid=[^\r\n]*\x26mac=/Ui
(assert (str.in_re X (re.++ (str.to_re "//setup_b.asp?prj=") (re.range "0" "9") (str.to_re "&pid=") (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "&mac=/Ui\u{a}"))))
(check-sat)
