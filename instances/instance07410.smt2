(declare-const X String)
; http[s]?://[a-zA-Z0-9.-/]+
(assert (str.in_re X (re.++ (str.to_re "http") (re.opt (str.to_re "s")) (str.to_re "://") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (re.range "." "/"))) (str.to_re "\u{a}"))))
; /\x2ecsv([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.csv") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; Toolbarwww\x2Eonlinecasinoextra\x2Ecom
(assert (str.in_re X (str.to_re "Toolbarwww.onlinecasinoextra.com\u{a}")))
; Host\x3A\s+Agentbody=\x2521\x2521\x2521Optix
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Agentbody=%21%21%21Optix\u{13}\u{a}")))))
; com\x2Findex\.php\?tpid=\x7D\x7BUser\x3A
(assert (not (str.in_re X (str.to_re "com/index.php?tpid=}{User:\u{a}"))))
(check-sat)
