(declare-const X String)
; /\x2emcl([\x3f\x2f]|$)/Uim
(assert (not (str.in_re X (re.++ (str.to_re "/.mcl") (re.union (str.to_re "?") (str.to_re "/")) (str.to_re "/Uim\u{a}")))))
; Host\x3AHost\x3AX-Mailer\x3a
(assert (not (str.in_re X (str.to_re "Host:Host:X-Mailer:\u{13}\u{a}"))))
; pjpoptwql\x2frlnj\sPG=SPEEDBARadblock\x2Elinkz\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "pjpoptwql/rlnj") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "PG=SPEEDBARadblock.linkz.com\u{a}"))))
(check-sat)

(exit)
