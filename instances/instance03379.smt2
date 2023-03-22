(declare-const X String)
; /bbdd(host|user|passwd)=\x22[^\s]*?([\x60\x3b\x7c]|\x24\x28)/i
(assert (not (str.in_re X (re.++ (str.to_re "/bbdd") (re.union (str.to_re "host") (str.to_re "user") (str.to_re "passwd")) (str.to_re "=\u{22}") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re "$(") (str.to_re "`") (str.to_re ";") (str.to_re "|")) (str.to_re "/i\u{a}")))))
(check-sat)
