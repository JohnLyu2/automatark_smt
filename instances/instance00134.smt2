(declare-const X String)
; ((http|ftp|https|ftps):\/\/)?[\w\-_\.]+\.(([0-9]{1,3})|([a-zA-Z]{2,3})|(aero|arpa|asia|coop|info|jobs|mobi|museum|name|travel))+(:[0-9]+)?\/?(([\w\-\.,@^%:/~\+#]*[\w\-\@^%/~\+#])((\?[a-zA-Z0-9\[\]\-\._+%\$#\=~',]*=[a-zA-Z0-9\[\]\-\._+%\$#\=~',]*)+(&[a-zA-Z0-9\[\]\-\._+%\$#\=~',]*=[a-zA-Z0-9\[\]\-\._+%\$#\=~',]*)*)?)?
(assert (not (str.in_re X (re.++ (re.opt (re.++ (re.union (str.to_re "http") (str.to_re "ftp") (str.to_re "https") (str.to_re "ftps")) (str.to_re "://"))) (re.+ (re.union (str.to_re "-") (str.to_re "_") (str.to_re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re ".") (re.+ (re.union ((_ re.loop 1 3) (re.range "0" "9")) ((_ re.loop 2 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "aero") (str.to_re "arpa") (str.to_re "asia") (str.to_re "coop") (str.to_re "info") (str.to_re "jobs") (str.to_re "mobi") (str.to_re "museum") (str.to_re "name") (str.to_re "travel"))) (re.opt (re.++ (str.to_re ":") (re.+ (re.range "0" "9")))) (re.opt (str.to_re "/")) (re.opt (re.++ (re.opt (re.++ (re.+ (re.++ (str.to_re "?") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "[") (str.to_re "]") (str.to_re "-") (str.to_re ".") (str.to_re "_") (str.to_re "+") (str.to_re "%") (str.to_re "$") (str.to_re "#") (str.to_re "=") (str.to_re "~") (str.to_re "'") (str.to_re ","))) (str.to_re "=") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "[") (str.to_re "]") (str.to_re "-") (str.to_re ".") (str.to_re "_") (str.to_re "+") (str.to_re "%") (str.to_re "$") (str.to_re "#") (str.to_re "=") (str.to_re "~") (str.to_re "'") (str.to_re ","))))) (re.* (re.++ (str.to_re "&") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "[") (str.to_re "]") (str.to_re "-") (str.to_re ".") (str.to_re "_") (str.to_re "+") (str.to_re "%") (str.to_re "$") (str.to_re "#") (str.to_re "=") (str.to_re "~") (str.to_re "'") (str.to_re ","))) (str.to_re "=") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "[") (str.to_re "]") (str.to_re "-") (str.to_re ".") (str.to_re "_") (str.to_re "+") (str.to_re "%") (str.to_re "$") (str.to_re "#") (str.to_re "=") (str.to_re "~") (str.to_re "'") (str.to_re ","))))))) (re.* (re.union (str.to_re "-") (str.to_re ".") (str.to_re ",") (str.to_re "@") (str.to_re "^") (str.to_re "%") (str.to_re ":") (str.to_re "/") (str.to_re "~") (str.to_re "+") (str.to_re "#") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.union (str.to_re "-") (str.to_re "@") (str.to_re "^") (str.to_re "%") (str.to_re "/") (str.to_re "~") (str.to_re "+") (str.to_re "#") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (str.to_re "\u{a}")))))
(check-sat)

(exit)
