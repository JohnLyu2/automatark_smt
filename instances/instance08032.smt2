(declare-const X String)
; /infor\.php\?uid=\w{52}/Ui
(assert (not (str.in_re X (re.++ (str.to_re "/infor.php?uid=") ((_ re.loop 52 52) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "/Ui\u{a}")))))
; Host\x3A\w+User-Agent\x3A\sTeomaBarHost\x3AHoursHost\x3AHost\x3A
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "User-Agent:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "TeomaBarHost:HoursHost:Host:\u{a}"))))
; /((https?|ftp)\:\/\/)?([a-z0-9+!*(),;?&=\$_.-]+(\:[a-z0-9+!*(),;?&=\$_.-]+)?@)?(([a-z0-9-.]*)\.([a-z]{2,6}))|(([0-9]{1,3}\.){3}[0-9]{1,3})(\:[0-9]{2,5})?(\/([a-z0-9+\$_-]\.?)+)*\/?(\?[a-z+&\$_.-][a-z0-9;:@&%=+\/\$_.-]*)?(#[a-z_.-][a-z0-9+\$_.-]*)?/i
(assert (not (str.in_re X (re.union (re.++ (str.to_re "/") (re.opt (re.++ (re.union (re.++ (str.to_re "http") (re.opt (str.to_re "s"))) (str.to_re "ftp")) (str.to_re "://"))) (re.opt (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "+") (str.to_re "!") (str.to_re "*") (str.to_re "(") (str.to_re ")") (str.to_re ",") (str.to_re ";") (str.to_re "?") (str.to_re "&") (str.to_re "=") (str.to_re "$") (str.to_re "_") (str.to_re ".") (str.to_re "-"))) (re.opt (re.++ (str.to_re ":") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "+") (str.to_re "!") (str.to_re "*") (str.to_re "(") (str.to_re ")") (str.to_re ",") (str.to_re ";") (str.to_re "?") (str.to_re "&") (str.to_re "=") (str.to_re "$") (str.to_re "_") (str.to_re ".") (str.to_re "-"))))) (str.to_re "@"))) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-") (str.to_re "."))) (str.to_re ".") ((_ re.loop 2 6) (re.range "a" "z"))) (re.++ (re.opt (re.++ (str.to_re ":") ((_ re.loop 2 5) (re.range "0" "9")))) (re.* (re.++ (str.to_re "/") (re.+ (re.++ (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "+") (str.to_re "$") (str.to_re "_") (str.to_re "-")) (re.opt (str.to_re ".")))))) (re.opt (str.to_re "/")) (re.opt (re.++ (str.to_re "?") (re.union (re.range "a" "z") (str.to_re "+") (str.to_re "&") (str.to_re "$") (str.to_re "_") (str.to_re ".") (str.to_re "-")) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re ";") (str.to_re ":") (str.to_re "@") (str.to_re "&") (str.to_re "%") (str.to_re "=") (str.to_re "+") (str.to_re "/") (str.to_re "$") (str.to_re "_") (str.to_re ".") (str.to_re "-"))))) (re.opt (re.++ (str.to_re "#") (re.union (re.range "a" "z") (str.to_re "_") (str.to_re ".") (str.to_re "-")) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "+") (str.to_re "$") (str.to_re "_") (str.to_re ".") (str.to_re "-"))))) (str.to_re "/i\u{a}") ((_ re.loop 3 3) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re "."))) ((_ re.loop 1 3) (re.range "0" "9")))))))
(check-sat)
