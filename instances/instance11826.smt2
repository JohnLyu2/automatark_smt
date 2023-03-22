(declare-const X String)
; Box\d+GENERAL_PARAM2FTA-SpyLoggerHost\x3A\.exePass-On
(assert (str.in_re X (re.++ (str.to_re "Box") (re.+ (re.range "0" "9")) (str.to_re "GENERAL_PARAM2FTA-SpyLoggerHost:.exePass-On\u{a}"))))
; /^\/\?[a-f0-9]{32}$/U
(assert (str.in_re X (re.++ (str.to_re "//?") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "/U\u{a}"))))
; \x7D\x7BTrojan\x3AUser-Agent\x3AbyHost\x3A\xb0\xae\xb6\xf9\xcd\xf8\xb5\xc1
(assert (not (str.in_re X (str.to_re "}{Trojan:User-Agent:byHost:\u{b0}\u{ae}\u{b6}\u{f9}\u{cd}\u{f8}\u{b5}\u{c1}\u{a}"))))
; URL\s+\.cfgmPOPrtCUSTOMPalToolbarUser-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "URL") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ".cfgmPOPrtCUSTOMPalToolbarUser-Agent:\u{a}"))))
(check-sat)
