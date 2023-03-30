(declare-const X String)
; pjpoptwql\x2frlnj\sPG=SPEEDBARadblock\x2Elinkz\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "pjpoptwql/rlnj") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "PG=SPEEDBARadblock.linkz.com\u{a}")))))
(check-sat)

(exit)
