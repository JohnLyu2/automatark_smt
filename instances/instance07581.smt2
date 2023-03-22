(declare-const X String)
; Referer\x3AHost\x3AHost\x3ASubject\x3Aonline-casino-searcher\.comnetid=Excite
(assert (str.in_re X (str.to_re "Referer:Host:Host:Subject:online-casino-searcher.comnetid=Excite\u{a}")))
; Spy\-Locked\s+ExploiterSchwindler\x2Fr\x2Fkeys\x2Fkeys
(assert (not (str.in_re X (re.++ (str.to_re "Spy-Locked") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ExploiterSchwindler/r/keys/keys\u{a}")))))
; EFError.*Host\x3A\swww\x2emalware-stopper\x2ecom
(assert (str.in_re X (re.++ (str.to_re "EFError") (re.* re.allchar) (str.to_re "Host:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.malware-stopper.com\u{a}"))))
(check-sat)
