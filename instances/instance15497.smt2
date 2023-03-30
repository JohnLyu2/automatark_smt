(declare-const X String)
; /filename=[^\n]*\x2edocm/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".docm/i\u{a}"))))
; RXFilteredDmInf\x5EJMailYeah\!Online\x2521\x2521\x2521Reportsversion\x2Etxt
(assert (not (str.in_re X (str.to_re "RXFilteredDmInf^JMailYeah!Online%21%21%21Reportsversion.txt\u{a}"))))
; zmnjgmomgbdz\x2fzzmw\.gzt.*www\x2Ealtnet\x2Ecom.*User-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "zmnjgmomgbdz/zzmw.gzt") (re.* re.allchar) (str.to_re "www.altnet.com\u{1b}") (re.* re.allchar) (str.to_re "User-Agent:\u{a}"))))
; %3f\s+url=[^\n\r]*httpUser-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "%3f") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "url=") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "httpUser-Agent:\u{a}"))))
(check-sat)

(exit)
