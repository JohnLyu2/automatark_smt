(declare-const X String)
; (https:[/][/]|http:[/][/]|www.)[a-zA-Z0-9\-\.]+\.[a-zA-Z]{2,3}(:[a-zA-Z0-9]*)?/?([a-zA-Z0-9\-\._\?\,\'/\\\+&%\$#\=~])*$
(assert (not (str.in_re X (re.++ (re.union (str.to_re "https://") (str.to_re "http://") (re.++ (str.to_re "www") re.allchar)) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-") (str.to_re "."))) (str.to_re ".") ((_ re.loop 2 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.opt (re.++ (str.to_re ":") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))) (re.opt (str.to_re "/")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-") (str.to_re ".") (str.to_re "_") (str.to_re "?") (str.to_re ",") (str.to_re "'") (str.to_re "/") (str.to_re "\u{5c}") (str.to_re "+") (str.to_re "&") (str.to_re "%") (str.to_re "$") (str.to_re "#") (str.to_re "=") (str.to_re "~"))) (str.to_re "\u{a}")))))
; DISK\s+c\.goclick\.com\w+asdbiz\x2Ebizfrom\x7croogoo\x7cCurrentiOpusetbuviaebe\x2feqv\.bvvpjpoptwql\x2frlnj
(assert (not (str.in_re X (re.++ (str.to_re "DISK") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "c.goclick.com") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "asdbiz.bizfrom|roogoo|CurrentiOpusetbuviaebe/eqv.bvvpjpoptwql/rlnj\u{a}")))))
; /filename=[^\n]*\x2ermf/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".rmf/i\u{a}"))))
; ^((http|https|ftp):\/\/(www\.)?|www\.)[a-zA-Z0-9\_\-]+\.([a-zA-Z]{2,4}|[a-zA-Z]{2}\.[a-zA-Z]{2})(\/[a-zA-Z0-9\-\._\?\&=,'\+%\$#~]*)*$
(assert (str.in_re X (re.++ (re.union (re.++ (re.union (str.to_re "http") (str.to_re "https") (str.to_re "ftp")) (str.to_re "://") (re.opt (str.to_re "www."))) (str.to_re "www.")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "_") (str.to_re "-"))) (str.to_re ".") (re.union ((_ re.loop 2 4) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re ".") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))))) (re.* (re.++ (str.to_re "/") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-") (str.to_re ".") (str.to_re "_") (str.to_re "?") (str.to_re "&") (str.to_re "=") (str.to_re ",") (str.to_re "'") (str.to_re "+") (str.to_re "%") (str.to_re "$") (str.to_re "#") (str.to_re "~"))))) (str.to_re "\u{a}"))))
; /filename=[^\n]*\x2epct/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pct/i\u{a}"))))
(check-sat)

(exit)
