(declare-const X String)
; /^\/b\/(letr|req|opt|eve)\/[0-9a-fA-F]{24}$/U
(assert (not (str.in_re X (re.++ (str.to_re "//b/") (re.union (str.to_re "letr") (str.to_re "req") (str.to_re "opt") (str.to_re "eve")) (str.to_re "/") ((_ re.loop 24 24) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to_re "/U\u{a}")))))
; /GET\s\/[\w-]{64}\sHTTP\/1\.[^\x2f]+Host\x3a\x20[^\x3a]+\x3a\d+\x0d\x0a/
(assert (str.in_re X (re.++ (str.to_re "/GET") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "/") ((_ re.loop 64 64) (re.union (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "HTTP/1.") (re.+ (re.comp (str.to_re "/"))) (str.to_re "Host: ") (re.+ (re.comp (str.to_re ":"))) (str.to_re ":") (re.+ (re.range "0" "9")) (str.to_re "\u{d}\u{a}/\u{a}"))))
; /bbdd(host|user|passwd)=\x22[^\s]*?([\x60\x3b\x7c]|\x24\x28)/i
(assert (not (str.in_re X (re.++ (str.to_re "/bbdd") (re.union (str.to_re "host") (str.to_re "user") (str.to_re "passwd")) (str.to_re "=\u{22}") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re "$(") (str.to_re "`") (str.to_re ";") (str.to_re "|")) (str.to_re "/i\u{a}")))))
(check-sat)
