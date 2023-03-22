(declare-const X String)
; /Host\x3a[^\n]+\x3a\d+\x0d\x0a/
(assert (str.in_re X (re.++ (str.to_re "/Host:") (re.+ (re.comp (str.to_re "\u{a}"))) (str.to_re ":") (re.+ (re.range "0" "9")) (str.to_re "\u{d}\u{a}/\u{a}"))))
; www\x2Emaxifiles\x2EcomServidor\x2E
(assert (str.in_re X (str.to_re "www.maxifiles.comServidor.\u{13}\u{a}")))
; (^-\d*\.?\d*[1-9]+\d*$)|(^-[1-9]+\d*\.\d*$)
(assert (not (str.in_re X (re.union (re.++ (str.to_re "-") (re.* (re.range "0" "9")) (re.opt (str.to_re ".")) (re.* (re.range "0" "9")) (re.+ (re.range "1" "9")) (re.* (re.range "0" "9"))) (re.++ (str.to_re "\u{a}-") (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")) (str.to_re ".") (re.* (re.range "0" "9")))))))
; ^[+-]?[0-9]+$
(assert (not (str.in_re X (re.++ (re.opt (re.union (str.to_re "+") (str.to_re "-"))) (re.+ (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
