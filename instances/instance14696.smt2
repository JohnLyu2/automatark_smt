(declare-const X String)
; ^((0?[2])/(0?[1-9]|[1-2][0-9])|(0?[469]|11)/(0?[1-9]|[1-2][0-9]|30)|(0?[13578]|1[02])/(0?[1-9]|[1-2][0-9]|3[0-1]))/([1][9][0-9]{2}|[2-9][0-9]{3})$
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "/") (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (re.range "1" "2") (re.range "0" "9"))) (re.opt (str.to_re "0")) (str.to_re "2")) (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.union (str.to_re "4") (str.to_re "6") (str.to_re "9"))) (str.to_re "11")) (str.to_re "/") (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (re.range "1" "2") (re.range "0" "9")) (str.to_re "30"))) (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "2")))) (str.to_re "/") (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (re.range "1" "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.range "0" "1"))))) (str.to_re "/") (re.union (re.++ (str.to_re "19") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (re.range "2" "9") ((_ re.loop 3 3) (re.range "0" "9")))) (str.to_re "\u{a}"))))
; ((https?|ftp|gopher|telnet|file|notes|ms-help):((//)|(\\\\))+[\w\d:#@%/;$()~_\+-=\\\.&]*)
(assert (str.in_re X (re.++ (str.to_re "\u{a}") (re.union (re.++ (str.to_re "http") (re.opt (str.to_re "s"))) (str.to_re "ftp") (str.to_re "gopher") (str.to_re "telnet") (str.to_re "file") (str.to_re "notes") (str.to_re "ms-help")) (str.to_re ":") (re.+ (re.union (str.to_re "//") (str.to_re "\u{5c}\u{5c}"))) (re.* (re.union (re.range "0" "9") (str.to_re ":") (str.to_re "#") (str.to_re "@") (str.to_re "%") (str.to_re "/") (str.to_re ";") (str.to_re "$") (str.to_re "(") (str.to_re ")") (str.to_re "~") (str.to_re "_") (re.range "+" "=") (str.to_re "\u{5c}") (str.to_re ".") (str.to_re "&") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))))
; X-Mailer\x3a\s+cyber@yahoo\x2EcomcuAgent
(assert (not (str.in_re X (re.++ (str.to_re "X-Mailer:\u{13}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "cyber@yahoo.comcuAgent\u{a}")))))
; /filename=[a-z0-9]+\x0d\x0a/H
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "\u{d}\u{a}/H\u{a}"))))
; /\x00hide hide\x22\x09\x22([a-z0-9\x5c\x2e\x3a]+\x2eexe|sh)/
(assert (str.in_re X (re.++ (str.to_re "/\u{0}hide hide\u{22}\u{9}\u{22}") (re.union (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "\u{5c}") (str.to_re ".") (str.to_re ":"))) (str.to_re ".exe")) (str.to_re "sh")) (str.to_re "/\u{a}"))))
(check-sat)

(exit)
