(declare-const X String)
; name\x2ecnnic\x2ecn\scom\x2Findex\.php\?tpid=\s\x5BStatic.*\x2Fbar_pl\x2Fb\.fcgi
(assert (str.in_re X (re.++ (str.to_re "name.cnnic.cn") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "com/index.php?tpid=") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "[Static") (re.* re.allchar) (str.to_re "/bar_pl/b.fcgi\u{a}"))))
; ((http|ftp|https):\/\/w{3}[\d]*.|(http|ftp|https):\/\/|w{3}[\d]*.)([\w\d\._\-#\(\)\[\]\\,;:]+@[\w\d\._\-#\(\)\[\]\\,;:])?([a-z0-9]+.)*[a-z\-0-9]+.([a-z]{2,3})?[a-z]{2,6}(:[0-9]+)?(\/[\/a-z0-9\._\-,]+)*[a-z0-9\-_\.\s\%]+(\?[a-z0-9=%&\.\-,#]+)?
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.union (str.to_re "http") (str.to_re "ftp") (str.to_re "https")) (str.to_re "://") ((_ re.loop 3 3) (str.to_re "w")) (re.* (re.range "0" "9")) re.allchar) (re.++ (re.union (str.to_re "http") (str.to_re "ftp") (str.to_re "https")) (str.to_re "://")) (re.++ ((_ re.loop 3 3) (str.to_re "w")) (re.* (re.range "0" "9")) re.allchar)) (re.opt (re.++ (re.+ (re.union (re.range "0" "9") (str.to_re ".") (str.to_re "_") (str.to_re "-") (str.to_re "#") (str.to_re "(") (str.to_re ")") (str.to_re "[") (str.to_re "]") (str.to_re "\u{5c}") (str.to_re ",") (str.to_re ";") (str.to_re ":") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "@") (re.union (re.range "0" "9") (str.to_re ".") (str.to_re "_") (str.to_re "-") (str.to_re "#") (str.to_re "(") (str.to_re ")") (str.to_re "[") (str.to_re "]") (str.to_re "\u{5c}") (str.to_re ",") (str.to_re ";") (str.to_re ":") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.* (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) re.allchar)) (re.+ (re.union (re.range "a" "z") (str.to_re "-") (re.range "0" "9"))) re.allchar (re.opt ((_ re.loop 2 3) (re.range "a" "z"))) ((_ re.loop 2 6) (re.range "a" "z")) (re.opt (re.++ (str.to_re ":") (re.+ (re.range "0" "9")))) (re.* (re.++ (str.to_re "/") (re.+ (re.union (str.to_re "/") (re.range "a" "z") (re.range "0" "9") (str.to_re ".") (str.to_re "_") (str.to_re "-") (str.to_re ","))))) (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-") (str.to_re "_") (str.to_re ".") (str.to_re "%") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (re.++ (str.to_re "?") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "=") (str.to_re "%") (str.to_re "&") (str.to_re ".") (str.to_re "-") (str.to_re ",") (str.to_re "#"))))) (str.to_re "\u{a}")))))
; ^([a-zA-Z0-9!@#$%^&*()-_=+;:'"|~`<>?/{}]{1,5})$
(assert (str.in_re X (re.++ ((_ re.loop 1 5) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "!") (str.to_re "@") (str.to_re "#") (str.to_re "$") (str.to_re "%") (str.to_re "^") (str.to_re "&") (str.to_re "*") (str.to_re "(") (re.range ")" "_") (str.to_re "=") (str.to_re "+") (str.to_re ";") (str.to_re ":") (str.to_re "'") (str.to_re "\u{22}") (str.to_re "|") (str.to_re "~") (str.to_re "`") (str.to_re "<") (str.to_re ">") (str.to_re "?") (str.to_re "/") (str.to_re "{") (str.to_re "}"))) (str.to_re "\u{a}"))))
; ^[a-zA-Z0-9\s.\-_']+$
(assert (str.in_re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re ".") (str.to_re "-") (str.to_re "_") (str.to_re "'") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}"))))
(check-sat)
