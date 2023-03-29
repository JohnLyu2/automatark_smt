(declare-const X String)
; com\x2Findex\.php\?tpid=\x7D\x7BUser\x3A
(assert (str.in_re X (str.to_re "com/index.php?tpid=}{User:\u{a}")))
; /filename=[^\n]*\x2ejp2/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".jp2/i\u{a}")))))
; \x28BDLL\x29Googledll\x3F
(assert (str.in_re X (str.to_re "(BDLL)\u{13}Googledll?\u{a}")))
; ^[^\\\/\?\*\"\'\>\<\:\|]*$
(assert (not (str.in_re X (re.++ (re.* (re.union (str.to_re "\u{5c}") (str.to_re "/") (str.to_re "?") (str.to_re "*") (str.to_re "\u{22}") (str.to_re "'") (str.to_re ">") (str.to_re "<") (str.to_re ":") (str.to_re "|"))) (str.to_re "\u{a}")))))
; ShadowNetMyAgentServerconfigINTERNAL\.iniKeylogger-Prosearchreslt
(assert (str.in_re X (str.to_re "ShadowNetMyAgentServerconfigINTERNAL.iniKeylogger-Prosearchreslt\u{a}")))
(check-sat)

(exit)
