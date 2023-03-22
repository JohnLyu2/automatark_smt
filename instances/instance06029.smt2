(declare-const X String)
; ^\s*(?i:)((1[0-2])|(0[1-9])|([123456789])):(([0-5][0-9])|([123456789]))\s(am|pm)\s*$
(assert (str.in_re X (re.++ (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (re.++ (str.to_re "1") (re.range "0" "2")) (re.++ (str.to_re "0") (re.range "1" "9")) (str.to_re "1") (str.to_re "2") (str.to_re "3") (str.to_re "4") (str.to_re "5") (str.to_re "6") (str.to_re "7") (str.to_re "8") (str.to_re "9")) (str.to_re ":") (re.union (re.++ (re.range "0" "5") (re.range "0" "9")) (str.to_re "1") (str.to_re "2") (str.to_re "3") (str.to_re "4") (str.to_re "5") (str.to_re "6") (str.to_re "7") (str.to_re "8") (str.to_re "9")) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (re.union (str.to_re "am") (str.to_re "pm")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}"))))
; /\x2fAdmin\x2fFunctionsClient\x2f(check.txt|Select.php|Update.php)/iU
(assert (not (str.in_re X (re.++ (str.to_re "//Admin/FunctionsClient/") (re.union (re.++ (str.to_re "check") re.allchar (str.to_re "txt")) (re.++ (str.to_re "Select") re.allchar (str.to_re "php")) (re.++ (str.to_re "Update") re.allchar (str.to_re "php"))) (str.to_re "/iU\u{a}")))))
; ^[F][O][\s]?[0-9]{3}$
(assert (str.in_re X (re.++ (str.to_re "FO") (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "\u{a}"))))
; /\x3fsv\x3d\d{1,3}\x26tq\x3d/smiU
(assert (str.in_re X (re.++ (str.to_re "/?sv=") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re "&tq=/smiU\u{a}"))))
(check-sat)
