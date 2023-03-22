(declare-const X String)
; ^([0-9a-f]{4}\.[0-9a-f]{4}\.[0-9a-f]{4})$
(assert (str.in_re X (re.++ (str.to_re "\u{a}") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to_re ".") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to_re ".") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "a" "f"))))))
; /\x2ewmx([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.wmx") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; EFError\swww\x2emalware-stopper\x2ecom
(assert (not (str.in_re X (re.++ (str.to_re "EFError") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.malware-stopper.com\u{a}")))))
(check-sat)
