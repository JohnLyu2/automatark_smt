(declare-const X String)
; ^[a-zA-Z]\w{0,30}$
(assert (not (str.in_re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) ((_ re.loop 0 30) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{a}")))))
; Host\x3A\s+www\.iggsey\.comcs\x2Esmartshopper\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.iggsey.comcs.smartshopper.com\u{a}")))))
; /setup=[a-z]$/Ui
(assert (str.in_re X (re.++ (str.to_re "/setup=") (re.range "a" "z") (str.to_re "/Ui\u{a}"))))
; NETObserve\d+Host\x3aohgdhkzfhdzo\x2fuwpOK\r\nHost\x3AHWAEname\x2ecnnic\x2ecn
(assert (str.in_re X (re.++ (str.to_re "NETObserve") (re.+ (re.range "0" "9")) (str.to_re "Host:ohgdhkzfhdzo/uwpOK\u{d}\u{a}Host:HWAEname.cnnic.cn\u{a}"))))
(check-sat)

(exit)
