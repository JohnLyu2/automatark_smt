(declare-const X String)
; SystemSleuth1\x2E0versionHost\x3AArrowHost\x3a3Awebsearch\x2Edrsnsrch\x2EcomhostieiWonHost\x3apjpoptwql\x2frlnj
(assert (str.in_re X (str.to_re "SystemSleuth\u{13}1.0versionHost:ArrowHost:3Awebsearch.drsnsrch.com\u{13}hostieiWonHost:pjpoptwql/rlnj\u{a}")))
; StarLoggerCookie\x3aHost\x3APRODUCEDwebsearch\.getmirar\.com
(assert (not (str.in_re X (str.to_re "StarLoggerCookie:Host:PRODUCEDwebsearch.getmirar.com\u{a}"))))
; ^\d{5}[- .]?\d{7}[- .]?\d{1}$
(assert (str.in_re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (re.union (str.to_re "-") (str.to_re " ") (str.to_re "."))) ((_ re.loop 7 7) (re.range "0" "9")) (re.opt (re.union (str.to_re "-") (str.to_re " ") (str.to_re "."))) ((_ re.loop 1 1) (re.range "0" "9")) (str.to_re "\u{a}"))))
; /\x3d\x0a$/P
(assert (str.in_re X (str.to_re "/=\u{a}/P\u{a}")))
; ([a-zA-Z0-9\_\-\.]+[a-zA-Z0-9\_\-\.]+[a-zA-Z0-9\_\-\.]+)+@([a-zA-z0-9][a-zA-z0-9][a-zA-z0-9]*)+(\.[a-zA-z0-9][a-zA-z0-9][a-zA-z0-9]*)(\.[a-zA-z0-9]+)*
(assert (str.in_re X (re.++ (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "_") (str.to_re "-") (str.to_re "."))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "_") (str.to_re "-") (str.to_re "."))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "_") (str.to_re "-") (str.to_re "."))))) (str.to_re "@") (re.+ (re.++ (re.union (re.range "a" "z") (re.range "A" "z") (re.range "0" "9")) (re.union (re.range "a" "z") (re.range "A" "z") (re.range "0" "9")) (re.* (re.union (re.range "a" "z") (re.range "A" "z") (re.range "0" "9"))))) (re.* (re.++ (str.to_re ".") (re.+ (re.union (re.range "a" "z") (re.range "A" "z") (re.range "0" "9"))))) (str.to_re "\u{a}.") (re.union (re.range "a" "z") (re.range "A" "z") (re.range "0" "9")) (re.union (re.range "a" "z") (re.range "A" "z") (re.range "0" "9")) (re.* (re.union (re.range "a" "z") (re.range "A" "z") (re.range "0" "9"))))))
(check-sat)
