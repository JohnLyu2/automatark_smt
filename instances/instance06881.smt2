(declare-const X String)
; SpyBuddySubject\x3Astats\x2edrivecleaner\x2ecom
(assert (not (str.in_re X (str.to_re "SpyBuddySubject:stats.drivecleaner.com\u{13}\u{a}"))))
; ^([\(]{1}[0-9]{3}[\)]{1}[\.| |\-]{0,1}|^[0-9]{3}[\.|\-| ]?)?[0-9]{3}(\.|\-| )?[0-9]{4}$
(assert (str.in_re X (re.++ (re.opt (re.union (re.++ ((_ re.loop 1 1) (str.to_re "(")) ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 1 1) (str.to_re ")")) (re.opt (re.union (str.to_re ".") (str.to_re "|") (str.to_re " ") (str.to_re "-")))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re ".") (str.to_re "|") (str.to_re "-") (str.to_re " ")))))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re ".") (str.to_re "-") (str.to_re " "))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}"))))
; /\x2emp3([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.mp3") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; filename=\x22Subject\x3awww\x2Eadoptim\x2Ecomreport\x2Fbar_pl\x2Fchk\.fcgi
(assert (str.in_re X (str.to_re "filename=\u{22}Subject:www.adoptim.comreport/bar_pl/chk.fcgi\u{a}")))
(check-sat)
