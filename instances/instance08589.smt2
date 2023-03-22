(declare-const X String)
; /HTTP\/1.[01]\r\nUser\x2dAgent\x3a\x20[ -~]+\r\nHost\x3a\x20[a-z0-9\x2d\x2e]+\.info\r\n/
(assert (not (str.in_re X (re.++ (str.to_re "/HTTP/1") re.allchar (re.union (str.to_re "0") (str.to_re "1")) (str.to_re "\u{d}\u{a}User-Agent: ") (re.+ (re.range " " "~")) (str.to_re "\u{d}\u{a}Host: ") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-") (str.to_re "."))) (str.to_re ".info\u{d}\u{a}/\u{a}")))))
; Host\x3a\w+Pre.*Keyloggeradfsgecoiwnfhirmvtg\x2fggqh\.kqh
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Pre") (re.* re.allchar) (str.to_re "Keyloggeradfsgecoiwnf\u{1b}hirmvtg/ggqh.kqh\u{1b}\u{a}")))))
(check-sat)
