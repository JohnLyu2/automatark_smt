(declare-const X String)
; /\x2ejfif?([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.jfi") (re.opt (str.to_re "f")) (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; Toolbar[^\n\r]*url=\d+Host\x3AWelcome\x2FcommunicatortbGateCrasher
(assert (str.in_re X (re.++ (str.to_re "Toolbar") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "url=") (re.+ (re.range "0" "9")) (str.to_re "Host:Welcome/communicatortbGateCrasher\u{a}"))))
; doarauzeraqf\x2fvvv\.ul
(assert (not (str.in_re X (str.to_re "doarauzeraqf/vvv.ul\u{a}"))))
(check-sat)

(exit)
