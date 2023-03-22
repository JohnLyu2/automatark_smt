(declare-const X String)
; ^([a-zA-Z0-9!@#$%^&*()-_=+;:'"|~`<>?/{}]{1,5})$
(assert (str.in_re X (re.++ ((_ re.loop 1 5) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "!") (str.to_re "@") (str.to_re "#") (str.to_re "$") (str.to_re "%") (str.to_re "^") (str.to_re "&") (str.to_re "*") (str.to_re "(") (re.range ")" "_") (str.to_re "=") (str.to_re "+") (str.to_re ";") (str.to_re ":") (str.to_re "'") (str.to_re "\u{22}") (str.to_re "|") (str.to_re "~") (str.to_re "`") (str.to_re "<") (str.to_re ">") (str.to_re "?") (str.to_re "/") (str.to_re "{") (str.to_re "}"))) (str.to_re "\u{a}"))))
; <script type="text/javascript">
(assert (not (str.in_re X (str.to_re "<script type=\u{22}text/javascript\u{22}>\u{a}"))))
; (http):\\/\\/[\\w\\-_]+(\\.[\\w\\-_]+)+(\\.[\\w\\-_]+)(\\/)([\\w\\-\\.,@?^=%&:/~\\+#]*[\\w\\-\\@?^=%&/~\\+#]+)(\\/)((\\d{8}-)|(\\d{9}-)|(\\d{10}-)|(\\d{11}-))+([\\w\\-\\.,@?^=%&:/~\\+#]*[\\w\\-\\@?+html^])?
(assert (not (str.in_re X (re.++ (str.to_re "http:\u{5c}/\u{5c}/") (re.+ (re.union (str.to_re "\u{5c}") (str.to_re "w") (re.range "\u{5c}" "_"))) (re.+ (re.++ (str.to_re "\u{5c}") re.allchar (re.+ (re.union (str.to_re "\u{5c}") (str.to_re "w") (re.range "\u{5c}" "_"))))) (str.to_re "\u{5c}/\u{5c}/") (re.+ (re.union (re.++ (str.to_re "\u{5c}") ((_ re.loop 8 8) (str.to_re "d")) (str.to_re "-")) (re.++ (str.to_re "\u{5c}") ((_ re.loop 9 9) (str.to_re "d")) (str.to_re "-")) (re.++ (str.to_re "\u{5c}") ((_ re.loop 10 10) (str.to_re "d")) (str.to_re "-")) (re.++ (str.to_re "\u{5c}") ((_ re.loop 11 11) (str.to_re "d")) (str.to_re "-")))) (re.opt (re.++ (re.* (re.union (str.to_re "\u{5c}") (str.to_re "w") (re.range "\u{5c}" "\u{5c}") (str.to_re ".") (str.to_re ",") (str.to_re "@") (str.to_re "?") (str.to_re "^") (str.to_re "=") (str.to_re "%") (str.to_re "&") (str.to_re ":") (str.to_re "/") (str.to_re "~") (str.to_re "+") (str.to_re "#"))) (re.union (str.to_re "\u{5c}") (str.to_re "w") (re.range "\u{5c}" "\u{5c}") (str.to_re "@") (str.to_re "?") (str.to_re "+") (str.to_re "h") (str.to_re "t") (str.to_re "m") (str.to_re "l") (str.to_re "^")))) (str.to_re "\u{a}\u{5c}") re.allchar (re.+ (re.union (str.to_re "\u{5c}") (str.to_re "w") (re.range "\u{5c}" "_"))) (re.* (re.union (str.to_re "\u{5c}") (str.to_re "w") (re.range "\u{5c}" "\u{5c}") (str.to_re ".") (str.to_re ",") (str.to_re "@") (str.to_re "?") (str.to_re "^") (str.to_re "=") (str.to_re "%") (str.to_re "&") (str.to_re ":") (str.to_re "/") (str.to_re "~") (str.to_re "+") (str.to_re "#"))) (re.+ (re.union (str.to_re "\u{5c}") (str.to_re "w") (re.range "\u{5c}" "\u{5c}") (str.to_re "@") (str.to_re "?") (str.to_re "^") (str.to_re "=") (str.to_re "%") (str.to_re "&") (str.to_re "/") (str.to_re "~") (str.to_re "+") (str.to_re "#")))))))
(check-sat)
