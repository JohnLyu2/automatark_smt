(declare-const X String)
; \x2Etxt\stoolbar\.anwb\.nlHost\x3AiOpusA-311Servert=form-data\x3B\x20name=\x22pid\x22
(assert (str.in_re X (re.++ (str.to_re ".txt") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "toolbar.anwb.nlHost:iOpusA-311Servert=form-data; name=\u{22}pid\u{22}\u{a}"))))
(check-sat)

(exit)
