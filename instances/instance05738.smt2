(declare-const X String)
; Client\d+Subject\x3AisBysooTBwhenu\x2EcomToolbar
(assert (str.in_re X (re.++ (str.to_re "Client") (re.+ (re.range "0" "9")) (str.to_re "Subject:isBysooTBwhenu.com\u{1b}Toolbar\u{a}"))))
(check-sat)
