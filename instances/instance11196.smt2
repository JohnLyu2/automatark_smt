(declare-const X String)
; ^[+]?\d*$
(assert (str.in_re X (re.++ (re.opt (str.to_re "+")) (re.* (re.range "0" "9")) (str.to_re "\u{a}"))))
; search\x2eimesh\x2ecom\s+WatchDogupwww\.klikvipsearch\.com
(assert (str.in_re X (re.++ (str.to_re "search.imesh.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "WatchDogupwww.klikvipsearch.com\u{a}"))))
; /\x2ejar([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.jar") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; information\s+User-Agent\x3AMM_RECO\x2EEXE
(assert (not (str.in_re X (re.++ (str.to_re "information") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:MM_RECO.EXE\u{a}")))))
(check-sat)
