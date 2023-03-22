(declare-const X String)
; User-Agent\x3A[^\n\r]*aadserver\dYOUR\x2Fxml\x2Ftoolbar\x2F
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "aadserver") (re.range "0" "9") (str.to_re "YOUR/xml/toolbar/\u{a}"))))
(check-sat)
