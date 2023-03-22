(declare-const X String)
; /GET\s\/[\w-]{64}\sHTTP\/1\.[^\x2f]+Host\x3a\x20[^\x3a]+\x3a\d+\x0d\x0a/
(assert (str.in_re X (re.++ (str.to_re "/GET") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "/") ((_ re.loop 64 64) (re.union (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "HTTP/1.") (re.+ (re.comp (str.to_re "/"))) (str.to_re "Host: ") (re.+ (re.comp (str.to_re ":"))) (str.to_re ":") (re.+ (re.range "0" "9")) (str.to_re "\u{d}\u{a}/\u{a}"))))
(check-sat)
