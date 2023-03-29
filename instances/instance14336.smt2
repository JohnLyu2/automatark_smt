(declare-const X String)
; Host\x3A\s+Agentbody=\x2521\x2521\x2521Optix
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Agentbody=%21%21%21Optix\u{13}\u{a}")))))
; port\s+aresflashdownloader\x2Ecom\s+adfsgecoiwnf\x23\x23\x23\x23User-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "port") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "aresflashdownloader.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "adfsgecoiwnf\u{1b}####User-Agent:\u{a}"))))
; BasicYWRtaW46cGFzc3dvcmQeAnthMngrLOGsearches\x2Eworldtostart\x2Ecom
(assert (str.in_re X (str.to_re "BasicYWRtaW46cGFzc3dvcmQeAnthMngrLOGsearches.worldtostart.com\u{a}")))
(check-sat)

(exit)
