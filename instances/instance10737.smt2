(declare-const X String)
; ^-?((\d*\.\d+)|(\d+\.\d*)|(\d+\.\d+))$
(assert (str.in_re X (re.++ (re.opt (str.to_re "-")) (re.union (re.++ (re.* (re.range "0" "9")) (str.to_re ".") (re.+ (re.range "0" "9"))) (re.++ (re.+ (re.range "0" "9")) (str.to_re ".") (re.* (re.range "0" "9"))) (re.++ (re.+ (re.range "0" "9")) (str.to_re ".") (re.+ (re.range "0" "9")))) (str.to_re "\u{a}"))))
; Host\x3A.*NETObserve\d+Host\x3aohgdhkzfhdzo\x2fuwpOK\r\n
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.* re.allchar) (str.to_re "NETObserve") (re.+ (re.range "0" "9")) (str.to_re "Host:ohgdhkzfhdzo/uwpOK\u{d}\u{a}\u{a}")))))
; Fictional\sHost\x3AWordmyway\.com
(assert (not (str.in_re X (re.++ (str.to_re "Fictional") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Host:Wordmyway.com\u{a}")))))
(check-sat)
