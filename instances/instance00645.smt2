(declare-const X String)
; zmnjgmomgbdz\x2fzzmw\.gzt.*www\x2Ealtnet\x2Ecom.*User-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "zmnjgmomgbdz/zzmw.gzt") (re.* re.allchar) (str.to_re "www.altnet.com\u{1b}") (re.* re.allchar) (str.to_re "User-Agent:\u{a}"))))
(check-sat)
