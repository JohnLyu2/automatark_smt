(declare-const X String)
; User-Agent\x3A.*OSSProxy
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "OSSProxy\u{a}"))))
; /filename=[^\n]*\x2exps/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".xps/i\u{a}")))))
; www\x2Eezula\x2Ecom.*com[^\n\r]*SpyBuddy
(assert (str.in_re X (re.++ (str.to_re "www.ezula.com") (re.* re.allchar) (str.to_re "com") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "SpyBuddy\u{a}"))))
; EFError.*Host\x3A\swww\x2emalware-stopper\x2ecom
(assert (not (str.in_re X (re.++ (str.to_re "EFError") (re.* re.allchar) (str.to_re "Host:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.malware-stopper.com\u{a}")))))
(check-sat)

(exit)
