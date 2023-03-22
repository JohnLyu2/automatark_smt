(declare-const X String)
; \x2Fbonzibuddy\x2Forigin\x3DsidefindApofisUser-Agent\x3A
(assert (not (str.in_re X (str.to_re "/bonzibuddy/origin=sidefindApofisUser-Agent:\u{a}"))))
; BasicYWRtaW46cGFzc3dvcmQeAnthMngrLOGsearches\x2Eworldtostart\x2Ecom
(assert (str.in_re X (str.to_re "BasicYWRtaW46cGFzc3dvcmQeAnthMngrLOGsearches.worldtostart.com\u{a}")))
; OS\x2F\d+User-Agent\x3AUser-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "OS/") (re.+ (re.range "0" "9")) (str.to_re "User-Agent:User-Agent:\u{a}")))))
(check-sat)
