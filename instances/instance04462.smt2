(declare-const X String)
; ((https?|ftp|gopher|telnet|file|notes|ms-help):((//)|(\\\\))+[\w\d:#@%/;$()~_\+-=\\\.&]*)
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") (re.union (re.++ (str.to_re "http") (re.opt (str.to_re "s"))) (str.to_re "ftp") (str.to_re "gopher") (str.to_re "telnet") (str.to_re "file") (str.to_re "notes") (str.to_re "ms-help")) (str.to_re ":") (re.+ (re.union (str.to_re "//") (str.to_re "\u{5c}\u{5c}"))) (re.* (re.union (re.range "0" "9") (str.to_re ":") (str.to_re "#") (str.to_re "@") (str.to_re "%") (str.to_re "/") (str.to_re ";") (str.to_re "$") (str.to_re "(") (str.to_re ")") (str.to_re "~") (str.to_re "_") (re.range "+" "=") (str.to_re "\u{5c}") (str.to_re ".") (str.to_re "&") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))))))
(check-sat)

(exit)
