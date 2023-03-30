(declare-const X String)
; <[\w\"\ '\#\* \=\',\.\\\(\)\/\-\$\{\}\[\]\|\*\?\+\^\&\:\%\;\!]+>
(assert (str.in_re X (re.++ (str.to_re "<") (re.+ (re.union (str.to_re "\u{22}") (str.to_re " ") (str.to_re "'") (str.to_re "#") (str.to_re "*") (str.to_re "=") (str.to_re ",") (str.to_re ".") (str.to_re "\u{5c}") (str.to_re "(") (str.to_re ")") (str.to_re "/") (str.to_re "-") (str.to_re "$") (str.to_re "{") (str.to_re "}") (str.to_re "[") (str.to_re "]") (str.to_re "|") (str.to_re "?") (str.to_re "+") (str.to_re "^") (str.to_re "&") (str.to_re ":") (str.to_re "%") (str.to_re ";") (str.to_re "!") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re ">\u{a}"))))
; User-Agent\x3A\s+\x7D\x7BPassword\x3A\d+information
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "}{Password:\u{1b}") (re.+ (re.range "0" "9")) (str.to_re "information\u{a}"))))
; Host\x3A[^\n\r]*cache\x2Eeverer\x2Ecom\s+from\.myway\.comToolbar
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "cache.everer.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "from.myway.com\u{1b}Toolbar\u{a}"))))
; /\.php\?b=[A-F0-9]+&v=1\./U
(assert (not (str.in_re X (re.++ (str.to_re "/.php?b=") (re.+ (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to_re "&v=1./U\u{a}")))))
(check-sat)

(exit)
