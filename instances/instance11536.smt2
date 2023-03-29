(declare-const X String)
; /filename=[^\n]*\x2epaq8o/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".paq8o/i\u{a}")))))
; www\x2Emaxifiles\x2Ecom.*Host\x3A
(assert (not (str.in_re X (re.++ (str.to_re "www.maxifiles.com") (re.* re.allchar) (str.to_re "Host:\u{a}")))))
; /hwid=[^\x0a\x26]+?\x26pc=[^\x0a\x26]+?\x26localip=[^\x0a\x26]+?\x26winver=/U
(assert (not (str.in_re X (re.++ (str.to_re "/hwid=") (re.+ (re.union (str.to_re "\u{a}") (str.to_re "&"))) (str.to_re "&pc=") (re.+ (re.union (str.to_re "\u{a}") (str.to_re "&"))) (str.to_re "&localip=") (re.+ (re.union (str.to_re "\u{a}") (str.to_re "&"))) (str.to_re "&winver=/U\u{a}")))))
; /\x2fAdmin\x2fFunctionsClient\x2f(check.txt|Select.php|Update.php)/iU
(assert (str.in_re X (re.++ (str.to_re "//Admin/FunctionsClient/") (re.union (re.++ (str.to_re "check") re.allchar (str.to_re "txt")) (re.++ (str.to_re "Select") re.allchar (str.to_re "php")) (re.++ (str.to_re "Update") re.allchar (str.to_re "php"))) (str.to_re "/iU\u{a}"))))
; ^100$|^0$|^[1-9]{0,1}[0-9]{0,1}$|^[1-9]{0,1}[0-9]{0,1}\.[0-9]{1,3}$
(assert (str.in_re X (re.union (str.to_re "100") (str.to_re "0") (re.++ (re.opt (re.range "1" "9")) (re.opt (re.range "0" "9"))) (re.++ (re.opt (re.range "1" "9")) (re.opt (re.range "0" "9")) (str.to_re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)

(exit)
