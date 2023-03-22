(declare-const X String)
; SpyAgent\d+nick_name=CIA-Test\d+url=http\x3A\d+\x2FNFO\x2CRegistered\x28BDLL\x29
(assert (not (str.in_re X (re.++ (str.to_re "SpyAgent") (re.+ (re.range "0" "9")) (str.to_re "nick_name=CIA-Test") (re.+ (re.range "0" "9")) (str.to_re "url=http:\u{1b}") (re.+ (re.range "0" "9")) (str.to_re "/NFO,Registered(BDLL)\u{13}\u{a}")))))
; /\x2exfdl([\?\x5c\x2f]|$)/miU
(assert (not (str.in_re X (re.++ (str.to_re "/.xfdl") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/miU\u{a}")))))
; </?[a-z][a-z0-9]*[^<>]*>
(assert (not (str.in_re X (re.++ (str.to_re "<") (re.opt (str.to_re "/")) (re.range "a" "z") (re.* (re.union (re.range "a" "z") (re.range "0" "9"))) (re.* (re.union (str.to_re "<") (str.to_re ">"))) (str.to_re ">\u{a}")))))
(check-sat)
