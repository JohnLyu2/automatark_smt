(declare-const X String)
; ShadowNet\dsearchreslt\sTROJAN-Host\x3AYWRtaW46cGFzc3dvcmQ
(assert (not (str.in_re X (re.++ (str.to_re "ShadowNet") (re.range "0" "9") (str.to_re "searchreslt") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "TROJAN-Host:YWRtaW46cGFzc3dvcmQ\u{a}")))))
; Host\x3A.*Basic.*ProtoUser-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.* re.allchar) (str.to_re "Basic") (re.* re.allchar) (str.to_re "ProtoUser-Agent:\u{a}"))))
; /filename=[^\n]*\x2ezip/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".zip/i\u{a}"))))
(check-sat)
