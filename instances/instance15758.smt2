(declare-const X String)
; /filename=[^\n]*\x2eavi/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".avi/i\u{a}")))))
; Toolbar\d+Host\x3A\d+4\x2e8\x2e4\x7D\x7BTrojan\x3Aare
(assert (not (str.in_re X (re.++ (str.to_re "Toolbar") (re.+ (re.range "0" "9")) (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "4.8.4}{Trojan:are\u{a}")))))
; /filename=[^\n]*\x2edxf/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".dxf/i\u{a}"))))
; ^[\w]{1,}$
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{a}")))))
; ^(http|https|ftp|ftps)\://([a-zA-Z0-9\-]+)(\.[a-zA-Z0-9\-]+)*(\.[a-zA-Z]{2,3})(:[0-9]*)?(/[a-zA-Z0-9_\-]*)*(\.?[a-zA-Z0-9#]{1,10})?([\?][a-zA-Z0-9\-\._\,\'\+&%\$#\=~]*)?$
(assert (not (str.in_re X (re.++ (re.union (str.to_re "http") (str.to_re "https") (str.to_re "ftp") (str.to_re "ftps")) (str.to_re "://") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-"))) (re.* (re.++ (str.to_re ".") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-"))))) (re.opt (re.++ (str.to_re ":") (re.* (re.range "0" "9")))) (re.* (re.++ (str.to_re "/") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "_") (str.to_re "-"))))) (re.opt (re.++ (re.opt (str.to_re ".")) ((_ re.loop 1 10) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "#"))))) (re.opt (re.++ (str.to_re "?") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-") (str.to_re ".") (str.to_re "_") (str.to_re ",") (str.to_re "'") (str.to_re "+") (str.to_re "&") (str.to_re "%") (str.to_re "$") (str.to_re "#") (str.to_re "=") (str.to_re "~"))))) (str.to_re "\u{a}.") ((_ re.loop 2 3) (re.union (re.range "a" "z") (re.range "A" "Z")))))))
(check-sat)
