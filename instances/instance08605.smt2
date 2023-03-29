(declare-const X String)
; Server\.exeHWPEServer\x3aHost\x3A
(assert (not (str.in_re X (str.to_re "Server.exeHWPEServer:Host:\u{a}"))))
; User-Agent\x3a\stoWebupdate\.cgi
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "toWebupdate.cgi\u{a}"))))
; /\x2ejpx([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.jpx") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
(check-sat)

(exit)
