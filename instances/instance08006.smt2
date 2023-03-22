(declare-const X String)
; /\x2edvr-ms([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.dvr-ms") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; /filename=[^\n]*\x2easf/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".asf/i\u{a}")))))
; /^From\x3a[^\r\n]*SpyBuddy/smi
(assert (not (str.in_re X (re.++ (str.to_re "/From:") (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "SpyBuddy/smi\u{a}")))))
(check-sat)
