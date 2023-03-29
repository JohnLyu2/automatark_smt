(declare-const X String)
; /filename=[^\n]*\x2eabc/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".abc/i\u{a}")))))
; From\x3A.*Host\x3A\s+Downloadfowclxccdxn\x2fuxwn\.ddy
(assert (not (str.in_re X (re.++ (str.to_re "From:") (re.* re.allchar) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Downloadfowclxccdxn/uxwn.ddy\u{a}")))))
; (\A|\s)(((>[:;=+])|[>:;=+])[,*]?[-~+o]?(\)+|\(+|\}+|\{+|\]+|\[+|\|+|\\+|/+|>+|<+|D+|[@#!OoPpXxZS$03])|>?[xX8][-~+o]?(\)+|\(+|\}+|\{+|\]+|\[+|\|+|\\+|/+|>+|<+|D+))(\Z|\s)
(assert (not (str.in_re X (re.++ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (re.union (re.++ (re.union (re.++ (str.to_re ">") (re.union (str.to_re ":") (str.to_re ";") (str.to_re "=") (str.to_re "+"))) (str.to_re ">") (str.to_re ":") (str.to_re ";") (str.to_re "=") (str.to_re "+")) (re.opt (re.union (str.to_re ",") (str.to_re "*"))) (re.opt (re.union (str.to_re "-") (str.to_re "~") (str.to_re "+") (str.to_re "o"))) (re.union (re.+ (str.to_re ")")) (re.+ (str.to_re "(")) (re.+ (str.to_re "}")) (re.+ (str.to_re "{")) (re.+ (str.to_re "]")) (re.+ (str.to_re "[")) (re.+ (str.to_re "|")) (re.+ (str.to_re "\u{5c}")) (re.+ (str.to_re "/")) (re.+ (str.to_re ">")) (re.+ (str.to_re "<")) (re.+ (str.to_re "D")) (str.to_re "@") (str.to_re "#") (str.to_re "!") (str.to_re "O") (str.to_re "o") (str.to_re "P") (str.to_re "p") (str.to_re "X") (str.to_re "x") (str.to_re "Z") (str.to_re "S") (str.to_re "$") (str.to_re "0") (str.to_re "3"))) (re.++ (re.opt (str.to_re ">")) (re.union (str.to_re "x") (str.to_re "X") (str.to_re "8")) (re.opt (re.union (str.to_re "-") (str.to_re "~") (str.to_re "+") (str.to_re "o"))) (re.union (re.+ (str.to_re ")")) (re.+ (str.to_re "(")) (re.+ (str.to_re "}")) (re.+ (str.to_re "{")) (re.+ (str.to_re "]")) (re.+ (str.to_re "[")) (re.+ (str.to_re "|")) (re.+ (str.to_re "\u{5c}")) (re.+ (str.to_re "/")) (re.+ (str.to_re ">")) (re.+ (str.to_re "<")) (re.+ (str.to_re "D"))))) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "\u{a}")))))
; /^Content-Type\x3a[\x20\x09]+application\/octet-stream/smiH
(assert (str.in_re X (re.++ (str.to_re "/Content-Type:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}"))) (str.to_re "application/octet-stream/smiH\u{a}"))))
; /filename=[^\n]*\x2ecsv/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".csv/i\u{a}")))))
(check-sat)

(exit)
