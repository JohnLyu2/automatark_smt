(declare-const X String)
; \.cfg\s+xbqyosoe\x2fcpvmAdToolsconnectedNodes\/cgi-bin\/PopupV
(assert (str.in_re X (re.++ (str.to_re ".cfg") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "xbqyosoe/cpvmAdToolsconnectedNodes/cgi-bin/PopupV\u{a}"))))
(check-sat)

(exit)
