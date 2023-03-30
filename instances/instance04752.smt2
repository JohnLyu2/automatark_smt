(declare-const X String)
; ShadowNet\dsearchresltAID\x2FUser-Agent\x3AFen\xeatreEye\x2Fdss\x2Fcc\.2_0_0\.
(assert (not (str.in_re X (re.++ (str.to_re "ShadowNet") (re.range "0" "9") (str.to_re "searchresltAID/User-Agent:Fen\u{ea}treEye/dss/cc.2_0_0.\u{a}")))))
(check-sat)

(exit)
