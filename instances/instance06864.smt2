(declare-const X String)
; ^((([hH][tT][tT][pP][sS]?|[fF][tT][pP])\:\/\/)?([\w\.\-]+(\:[\w\.\&%\$\-]+)*@)?((([^\s\(\)\<\>\\\"\.\[\]\,@;:]+)(\.[^\s\(\)\<\>\\\"\.\[\]\,@;:]+)*(\.[a-zA-Z]{2,4}))|((([01]?\d{1,2}|2[0-4]\d|25[0-5])\.){3}([01]?\d{1,2}|2[0-4]\d|25[0-5])))(\b\:(6553[0-5]|655[0-2]\d|65[0-4]\d{2}|6[0-4]\d{3}|[1-5]\d{4}|[1-9]\d{0,3}|0)\b)?((\/[^\/][\w\.\,\?\'\\\/\+&%\$#\=~_\-@]*)*[^\.\,\?\"\'\(\)\[\]!;<>{}\s\x7F-\xFF])?)$
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") (re.opt (re.++ (re.union (re.++ (re.union (str.to_re "h") (str.to_re "H")) (re.union (str.to_re "t") (str.to_re "T")) (re.union (str.to_re "t") (str.to_re "T")) (re.union (str.to_re "p") (str.to_re "P")) (re.opt (re.union (str.to_re "s") (str.to_re "S")))) (re.++ (re.union (str.to_re "f") (str.to_re "F")) (re.union (str.to_re "t") (str.to_re "T")) (re.union (str.to_re "p") (str.to_re "P")))) (str.to_re "://"))) (re.opt (re.++ (re.+ (re.union (str.to_re ".") (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.++ (str.to_re ":") (re.+ (re.union (str.to_re ".") (str.to_re "&") (str.to_re "%") (str.to_re "$") (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (str.to_re "@"))) (re.union (re.++ (re.+ (re.union (str.to_re "(") (str.to_re ")") (str.to_re "<") (str.to_re ">") (str.to_re "\u{5c}") (str.to_re "\u{22}") (str.to_re ".") (str.to_re "[") (str.to_re "]") (str.to_re ",") (str.to_re "@") (str.to_re ";") (str.to_re ":") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* (re.++ (str.to_re ".") (re.+ (re.union (str.to_re "(") (str.to_re ")") (str.to_re "<") (str.to_re ">") (str.to_re "\u{5c}") (str.to_re "\u{22}") (str.to_re ".") (str.to_re "[") (str.to_re "]") (str.to_re ",") (str.to_re "@") (str.to_re ";") (str.to_re ":") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))) (str.to_re ".") ((_ re.loop 2 4) (re.union (re.range "a" "z") (re.range "A" "Z")))) (re.++ ((_ re.loop 3 3) (re.++ (re.union (re.++ (re.opt (re.union (str.to_re "0") (str.to_re "1"))) ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to_re "25") (re.range "0" "5"))) (str.to_re "."))) (re.union (re.++ (re.opt (re.union (str.to_re "0") (str.to_re "1"))) ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to_re "25") (re.range "0" "5"))))) (re.opt (re.++ (str.to_re ":") (re.union (re.++ (str.to_re "6553") (re.range "0" "5")) (re.++ (str.to_re "655") (re.range "0" "2") (re.range "0" "9")) (re.++ (str.to_re "65") (re.range "0" "4") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "6") (re.range "0" "4") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (re.range "1" "5") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (re.range "1" "9") ((_ re.loop 0 3) (re.range "0" "9"))) (str.to_re "0")))) (re.opt (re.++ (re.* (re.++ (str.to_re "/") (re.comp (str.to_re "/")) (re.* (re.union (str.to_re ".") (str.to_re ",") (str.to_re "?") (str.to_re "'") (str.to_re "\u{5c}") (str.to_re "/") (str.to_re "+") (str.to_re "&") (str.to_re "%") (str.to_re "$") (str.to_re "#") (str.to_re "=") (str.to_re "~") (str.to_re "_") (str.to_re "-") (str.to_re "@") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (re.union (str.to_re ".") (str.to_re ",") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "'") (str.to_re "(") (str.to_re ")") (str.to_re "[") (str.to_re "]") (str.to_re "!") (str.to_re ";") (str.to_re "<") (str.to_re ">") (str.to_re "{") (str.to_re "}") (re.range "\u{7f}" "\u{ff}") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))))))
; /filename=[^\n]*\x2epict/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pict/i\u{a}")))))
; IP.*encoder\d+SAHPORT-User-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "IP") (re.* re.allchar) (str.to_re "encoder") (re.+ (re.range "0" "9")) (str.to_re "SAHPORT-User-Agent:\u{a}"))))
(check-sat)
