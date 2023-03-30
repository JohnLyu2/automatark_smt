(declare-const X String)
; /filename=[^\n]*\x2eamf/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".amf/i\u{a}"))))
; Referer\x3Awww\x2Eccnnlc\x2Ecom\x04\x00User-Agent\x3A\x22The
(assert (str.in_re X (str.to_re "Referer:www.ccnnlc.com\u{13}\u{4}\u{0}User-Agent:\u{22}The\u{a}")))
; ^((http(s){0,1}\:\/\/){0,1}([a-z|A-Z|0-9|\.|\-|_]){4,255}(\:\d{1,5}){0,1}){0,1}((\/([a-z|A-Z|0-9|\.|\-|_]|\%[A-F|a-f|0-9]{2}){1,255}){1,255}\/{0,1}){0,1}(|\/{0,1}\?[a-z|A-Z|0-9|\.|\-|_]{1,255}\=([a-z|A-Z|0-9|\.|\-|_|\+|\:]|\%[A-F|a-f|0-9]{2}|\&[a-z|A-Z]{2,12}\;){0,255}){0,1}((\&[a-z|A-Z|0-9|\.|\-|_]{1,255}\=([a-z|A-Z|0-9|\.|\-|_|\+|\:]|\%[A-F|a-f|0-9]{2}|\&[a-z|A-Z]{2,12}\;){0,255}){0,255})(\/{0,1}|\#([a-z|A-Z|0-9|\.|\-|_|\+|\:]|\%[A-F|a-f|0-9]{2}|\&[a-z|A-Z]{2,12}\;){0,255})$
(assert (not (str.in_re X (re.++ (re.opt (re.++ (re.opt (re.++ (str.to_re "http") (re.opt (str.to_re "s")) (str.to_re "://"))) ((_ re.loop 4 255) (re.union (re.range "a" "z") (str.to_re "|") (re.range "A" "Z") (re.range "0" "9") (str.to_re ".") (str.to_re "-") (str.to_re "_"))) (re.opt (re.++ (str.to_re ":") ((_ re.loop 1 5) (re.range "0" "9")))))) (re.opt (re.++ ((_ re.loop 1 255) (re.++ (str.to_re "/") ((_ re.loop 1 255) (re.union (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "A" "F") (str.to_re "|") (re.range "a" "f") (re.range "0" "9")))) (re.range "a" "z") (str.to_re "|") (re.range "A" "Z") (re.range "0" "9") (str.to_re ".") (str.to_re "-") (str.to_re "_"))))) (re.opt (str.to_re "/")))) (re.opt (re.++ (re.opt (str.to_re "/")) (str.to_re "?") ((_ re.loop 1 255) (re.union (re.range "a" "z") (str.to_re "|") (re.range "A" "Z") (re.range "0" "9") (str.to_re ".") (str.to_re "-") (str.to_re "_"))) (str.to_re "=") ((_ re.loop 0 255) (re.union (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "A" "F") (str.to_re "|") (re.range "a" "f") (re.range "0" "9")))) (re.++ (str.to_re "&") ((_ re.loop 2 12) (re.union (re.range "a" "z") (str.to_re "|") (re.range "A" "Z"))) (str.to_re ";")) (re.range "a" "z") (str.to_re "|") (re.range "A" "Z") (re.range "0" "9") (str.to_re ".") (str.to_re "-") (str.to_re "_") (str.to_re "+") (str.to_re ":"))))) ((_ re.loop 0 255) (re.++ (str.to_re "&") ((_ re.loop 1 255) (re.union (re.range "a" "z") (str.to_re "|") (re.range "A" "Z") (re.range "0" "9") (str.to_re ".") (str.to_re "-") (str.to_re "_"))) (str.to_re "=") ((_ re.loop 0 255) (re.union (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "A" "F") (str.to_re "|") (re.range "a" "f") (re.range "0" "9")))) (re.++ (str.to_re "&") ((_ re.loop 2 12) (re.union (re.range "a" "z") (str.to_re "|") (re.range "A" "Z"))) (str.to_re ";")) (re.range "a" "z") (str.to_re "|") (re.range "A" "Z") (re.range "0" "9") (str.to_re ".") (str.to_re "-") (str.to_re "_") (str.to_re "+") (str.to_re ":"))))) (re.union (re.opt (str.to_re "/")) (re.++ (str.to_re "#") ((_ re.loop 0 255) (re.union (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "A" "F") (str.to_re "|") (re.range "a" "f") (re.range "0" "9")))) (re.++ (str.to_re "&") ((_ re.loop 2 12) (re.union (re.range "a" "z") (str.to_re "|") (re.range "A" "Z"))) (str.to_re ";")) (re.range "a" "z") (str.to_re "|") (re.range "A" "Z") (re.range "0" "9") (str.to_re ".") (str.to_re "-") (str.to_re "_") (str.to_re "+") (str.to_re ":"))))) (str.to_re "\u{a}")))))
; /^(\x00\x00\x00\x00|.{4}(\x00\x00\x00\x00|.{12}))/s
(assert (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "\u{0}\u{0}\u{0}\u{0}") (re.++ ((_ re.loop 4 4) re.allchar) (re.union (str.to_re "\u{0}\u{0}\u{0}\u{0}") ((_ re.loop 12 12) re.allchar)))) (str.to_re "/s\u{a}"))))
; /\/[a-z0-9]{12}\.txt$/U
(assert (not (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 12 12) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re ".txt/U\u{a}")))))
(check-sat)

(exit)
