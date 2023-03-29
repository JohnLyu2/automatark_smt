(declare-const X String)
; /\x2eswf([\x3f\x2f]|$)/Uim
(assert (str.in_re X (re.++ (str.to_re "/.swf") (re.union (str.to_re "?") (str.to_re "/")) (str.to_re "/Uim\u{a}"))))
; Host\x3A.*NETObserve\d+Host\x3aohgdhkzfhdzo\x2fuwpOK\r\n
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.* re.allchar) (str.to_re "NETObserve") (re.+ (re.range "0" "9")) (str.to_re "Host:ohgdhkzfhdzo/uwpOK\u{d}\u{a}\u{a}"))))
; ^[^iIoOqQ'-]{10,17}$
(assert (not (str.in_re X (re.++ ((_ re.loop 10 17) (re.union (str.to_re "i") (str.to_re "I") (str.to_re "o") (str.to_re "O") (str.to_re "q") (str.to_re "Q") (str.to_re "'") (str.to_re "-"))) (str.to_re "\u{a}")))))
(check-sat)

(exit)
