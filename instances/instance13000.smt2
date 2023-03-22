(declare-const X String)
; zmnjgmomgbdz\x2fzzmw\.gzt.*www\x2Ealtnet\x2Ecom.*User-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "zmnjgmomgbdz/zzmw.gzt") (re.* re.allchar) (str.to_re "www.altnet.com\u{1b}") (re.* re.allchar) (str.to_re "User-Agent:\u{a}"))))
; nick_name=CIA-Test\d+url=http\x3A\d+\x2FNFO\x2CRegistered\x28BDLL\x29
(assert (not (str.in_re X (re.++ (str.to_re "nick_name=CIA-Test") (re.+ (re.range "0" "9")) (str.to_re "url=http:\u{1b}") (re.+ (re.range "0" "9")) (str.to_re "/NFO,Registered(BDLL)\u{13}\u{a}")))))
(check-sat)
