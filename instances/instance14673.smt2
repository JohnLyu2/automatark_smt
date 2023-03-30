(declare-const X String)
; ^([-]?[0-9])$|^([-]?[1][0-2])$
(assert (str.in_re X (re.union (re.++ (re.opt (str.to_re "-")) (re.range "0" "9")) (re.++ (str.to_re "\u{a}") (re.opt (str.to_re "-")) (str.to_re "1") (re.range "0" "2")))))
; /^Content-Type\x3a[\x20\x09]+application\/octet-stream/smiH
(assert (not (str.in_re X (re.++ (str.to_re "/Content-Type:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}"))) (str.to_re "application/octet-stream/smiH\u{a}")))))
; Host\x3Aas\x2Estarware\x2Ecom\x2Fdp\x2Fsearch\?x=
(assert (not (str.in_re X (str.to_re "Host:as.starware.com/dp/search?x=\u{a}"))))
; zmnjgmomgbdz\x2fzzmw\.gzt.*www\x2Ealtnet\x2Ecom.*User-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "zmnjgmomgbdz/zzmw.gzt") (re.* re.allchar) (str.to_re "www.altnet.com\u{1b}") (re.* re.allchar) (str.to_re "User-Agent:\u{a}")))))
(check-sat)

(exit)
