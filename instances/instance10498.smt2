(declare-const X String)
; ^(([8]))$|^((([0-7]))$|^((([0-7])).?((25)|(50)|(5)|(75)|(0)|(00))))$
(assert (str.in_re X (re.union (str.to_re "8") (re.++ (re.union (re.range "0" "7") (re.++ (re.range "0" "7") (re.opt re.allchar) (re.union (str.to_re "25") (str.to_re "50") (str.to_re "5") (str.to_re "75") (str.to_re "0") (str.to_re "00")))) (str.to_re "\u{a}")))))
; www\x2eproventactics\x2ecom\s+
(assert (str.in_re X (re.++ (str.to_re "www.proventactics.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}"))))
; SystemSleuth1\x2E0versionHost\x3AArrowHost\x3a3Awebsearch\x2Edrsnsrch\x2EcomhostieiWonHost\x3apjpoptwql\x2frlnj
(assert (str.in_re X (str.to_re "SystemSleuth\u{13}1.0versionHost:ArrowHost:3Awebsearch.drsnsrch.com\u{13}hostieiWonHost:pjpoptwql/rlnj\u{a}")))
(check-sat)
