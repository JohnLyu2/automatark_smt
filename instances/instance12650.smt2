(declare-const X String)
; \.\s|$(\n|\r\n)
(assert (str.in_re X (re.union (re.++ (str.to_re ".") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.++ (re.union (str.to_re "\u{a}") (str.to_re "\u{d}\u{a}")) (str.to_re "\u{a}")))))
; Host\x3A\s+Eyewww\x2Eccnnlc\x2EcomHost\x3aHost\x3a
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Eyewww.ccnnlc.com\u{13}Host:Host:\u{a}")))))
; ^\d{1,7}$
(assert (str.in_re X (re.++ ((_ re.loop 1 7) (re.range "0" "9")) (str.to_re "\u{a}"))))
; SystemSleuth1\x2E0versionHost\x3AArrowHost\x3a3Awebsearch\x2Edrsnsrch\x2EcomhostieiWonHost\x3apjpoptwql\x2frlnj
(assert (str.in_re X (str.to_re "SystemSleuth\u{13}1.0versionHost:ArrowHost:3Awebsearch.drsnsrch.com\u{13}hostieiWonHost:pjpoptwql/rlnj\u{a}")))
(check-sat)

(exit)
