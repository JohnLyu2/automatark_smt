(declare-const X String)
; User-Agent\x3aHost\x3Apasswordhavewww\x2Ealfacleaner\x2Ecom
(assert (str.in_re X (str.to_re "User-Agent:Host:passwordhavewww.alfacleaner.com\u{a}")))
(check-sat)
