(declare-const X String)
; Host\x3a\s+hostiedesksearch\.dropspam\.com\x2Fbi\x2Fservlet\x2FThinstall
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "hostiedesksearch.dropspam.com/bi/servlet/Thinstall\u{a}"))))
; \b([A-Za-z0-9]+)(-|_|\.)?(\w+)?@\w+\.(\w+)?(\.)?(\w+)?(\.)?(\w+)?\b
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (re.opt (re.union (str.to_re "-") (str.to_re "_") (str.to_re "."))) (re.opt (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (str.to_re "@") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re ".") (re.opt (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.opt (str.to_re ".")) (re.opt (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.opt (str.to_re ".")) (re.opt (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (str.to_re "\u{a}")))))
; version.*Host\x3a\s+iWonHost\x3apjpoptwql\x2frlnj
(assert (not (str.in_re X (re.++ (str.to_re "version") (re.* re.allchar) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "iWonHost:pjpoptwql/rlnj\u{a}")))))
(check-sat)
