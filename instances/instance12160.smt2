(declare-const X String)
; Iterenet\s+www\x2Emirarsearch\x2EcomHost\x3A
(assert (not (str.in_re X (re.++ (str.to_re "Iterenet") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.mirarsearch.comHost:\u{a}")))))
; /^\s*?RCPT\s+?TO\x3a[^\r\n]*?\x28\x29\s\x7b/i
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "RCPT") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "TO:") (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "()") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "{/i\u{a}")))))
(check-sat)

(exit)
