(declare-const X String)
; ^((nntp|sftp|ftp(s)?|http(s)?|gopher|news|file|telnet):\/\/)?(([a-zA-Z0-9\._-]*([a-zA-Z0-9]\.[a-zA-Z0-9])[a-zA-Z]{1,6})|(([0-9]{1,3}\.){3}[0-9]{1,3}))(:\d+)?(\/[^:][^\s]*)?$
(assert (str.in_re X (re.++ (re.opt (re.++ (re.union (str.to_re "nntp") (str.to_re "sftp") (re.++ (str.to_re "ftp") (re.opt (str.to_re "s"))) (re.++ (str.to_re "http") (re.opt (str.to_re "s"))) (str.to_re "gopher") (str.to_re "news") (str.to_re "file") (str.to_re "telnet")) (str.to_re "://"))) (re.union (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re ".") (str.to_re "_") (str.to_re "-"))) ((_ re.loop 1 6) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")) (str.to_re ".") (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (re.++ ((_ re.loop 3 3) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re "."))) ((_ re.loop 1 3) (re.range "0" "9")))) (re.opt (re.++ (str.to_re ":") (re.+ (re.range "0" "9")))) (re.opt (re.++ (str.to_re "/") (re.comp (str.to_re ":")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))) (str.to_re "\u{a}"))))
(check-sat)
