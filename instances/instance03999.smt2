(declare-const X String)
; <!--[\s\S]*?-->
(assert (not (str.in_re X (re.++ (str.to_re "<!--") (re.* (re.union (re.comp (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "-->\u{a}")))))
(check-sat)
