(declare-const X String)
; SystemSleuth1\x2E0versionHost\x3AArrowHost\x3a3Awebsearch\x2Edrsnsrch\x2EcomhostieiWonHost\x3apjpoptwql\x2frlnj
(assert (not (str.in_re X (str.to_re "SystemSleuth\u{13}1.0versionHost:ArrowHost:3Awebsearch.drsnsrch.com\u{13}hostieiWonHost:pjpoptwql/rlnj\u{a}"))))
; /^Referer\x3a[^\r\n]+\/[\w_]{32,}\.html\r$/Hsm
(assert (not (str.in_re X (re.++ (str.to_re "/Referer:") (re.+ (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "/.html\u{d}/Hsm\u{a}") ((_ re.loop 32 32) (re.union (str.to_re "_") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.union (str.to_re "_") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))))))
(check-sat)
