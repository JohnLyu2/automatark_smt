(declare-const X String)
; Referer\x3AHost\x3AHost\x3ASubject\x3Aonline-casino-searcher\.comnetid=Excite
(assert (str.in_re X (str.to_re "Referer:Host:Host:Subject:online-casino-searcher.comnetid=Excite\u{a}")))
; snprtz\x7Cdialnoref\x3D\x25user\x5FidPG=SPEEDBAR
(assert (str.in_re X (str.to_re "snprtz|dialnoref=%user_idPG=SPEEDBAR\u{a}")))
; ShadowNet\s+AID\x2FUser-Agent\x3AFen\xeatreEye\x2Fdss\x2Fcc\.2_0_0\.
(assert (str.in_re X (re.++ (str.to_re "ShadowNet") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "AID/User-Agent:Fen\u{ea}treEye/dss/cc.2_0_0.\u{a}"))))
; isSAH\*Agentwww\.raxsearch\.comHost\x3A-~-\x22The
(assert (not (str.in_re X (str.to_re "isSAH*Agentwww.raxsearch.comHost:-~-\u{22}The\u{a}"))))
(check-sat)
