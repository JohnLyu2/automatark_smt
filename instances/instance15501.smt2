(declare-const X String)
; Host\x3A\s+www\x2Eyoogee\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.yoogee.com\u{13}\u{a}")))))
; \x5Chome\/lordofsearchToolbar\x22StarLogger\x22
(assert (str.in_re X (str.to_re "\u{5c}home/lordofsearchToolbar\u{22}StarLogger\u{22}\u{a}")))
; /filename=[^\n]*\x2ebak/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".bak/i\u{a}")))))
; information\s+User-Agent\x3AMM_RECO\x2EEXE
(assert (str.in_re X (re.++ (str.to_re "information") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:MM_RECO.EXE\u{a}"))))
; Desktop.*Hello\x2E.*Referer\x3AToolbar
(assert (str.in_re X (re.++ (str.to_re "Desktop") (re.* re.allchar) (str.to_re "Hello.") (re.* re.allchar) (str.to_re "Referer:Toolbar\u{a}"))))
(check-sat)
