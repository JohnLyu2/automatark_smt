(declare-const X String)
; Host\x3A\s+User-Agent\x3A\s+ApofisToolbarUserhRatasdbiz\x2Ebizwww\x2Eserverlogic3\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ApofisToolbarUserhRatasdbiz.bizwww.serverlogic3.com\u{a}")))))
(check-sat)
