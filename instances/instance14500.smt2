(declare-const X String)
; HTTPwwwProbnymomspyo\x2fzowy
(assert (not (str.in_re X (str.to_re "HTTPwwwProbnymomspyo/zowy\u{a}"))))
; ^[A-Z]{3}-[0-9]{4}$
(assert (not (str.in_re X (re.++ ((_ re.loop 3 3) (re.range "A" "Z")) (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}")))))
; Keystrokes.*LOG.*Host\x3Awww\x2Eserverlogic3\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "Keystrokes") (re.* re.allchar) (str.to_re "LOG") (re.* re.allchar) (str.to_re "Host:www.serverlogic3.com\u{a}"))))
(check-sat)
