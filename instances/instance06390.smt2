(declare-const X String)
; ^[-\w\s"'=/!@#%&,;:`~\.\$\^\{\[\(\|\)\]\}\*\+\?\\]*$
(assert (not (str.in_re X (re.++ (re.* (re.union (str.to_re "-") (str.to_re "\u{22}") (str.to_re "'") (str.to_re "=") (str.to_re "/") (str.to_re "!") (str.to_re "@") (str.to_re "#") (str.to_re "%") (str.to_re "&") (str.to_re ",") (str.to_re ";") (str.to_re ":") (str.to_re "`") (str.to_re "~") (str.to_re ".") (str.to_re "$") (str.to_re "^") (str.to_re "{") (str.to_re "[") (str.to_re "(") (str.to_re "|") (str.to_re ")") (str.to_re "]") (str.to_re "}") (str.to_re "*") (str.to_re "+") (str.to_re "?") (str.to_re "\u{5c}") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}")))))
; /\)\r\nHost\x3a\x20[a-z\d\x2e\x2d]{6,32}\r\nCache\x2dControl\x3a\x20no\x2dcache\r\n\r\n$/
(assert (str.in_re X (re.++ (str.to_re "/)\u{d}\u{a}Host: ") ((_ re.loop 6 32) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re ".") (str.to_re "-"))) (str.to_re "\u{d}\u{a}Cache-Control: no-cache\u{d}\u{a}\u{d}\u{a}/\u{a}"))))
; /filename=[^\n]*\x2ermf/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".rmf/i\u{a}")))))
; /filename=[^\n]*\x2es3m/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".s3m/i\u{a}")))))
(check-sat)
