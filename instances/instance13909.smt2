(declare-const X String)
; /\x2fb\x2fshoe\x2f[0-9]{3,5}$/U
(assert (str.in_re X (re.++ (str.to_re "//b/shoe/") ((_ re.loop 3 5) (re.range "0" "9")) (str.to_re "/U\u{a}"))))
; Logger\w+searchreslt\dSubject\x3AHANDY\x2FrssScaner
(assert (not (str.in_re X (re.++ (str.to_re "Logger") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "searchreslt") (re.range "0" "9") (str.to_re "Subject:HANDY/rssScaner\u{a}")))))
; ^[A-PR-UWYZ]([0-9]([A-HJKSTUW]|[0-9])?|[A-HK-Y][0-9]([ABEHMNPRVWXY]|[0-9])) [0-9][ABD-HJLNP-UW-Z]{2}|GIR 0AA$
(assert (not (str.in_re X (re.union (re.++ (re.union (re.range "A" "P") (re.range "R" "U") (str.to_re "W") (str.to_re "Y") (str.to_re "Z")) (re.union (re.++ (re.range "0" "9") (re.opt (re.union (re.range "A" "H") (str.to_re "J") (str.to_re "K") (str.to_re "S") (str.to_re "T") (str.to_re "U") (str.to_re "W") (re.range "0" "9")))) (re.++ (re.union (re.range "A" "H") (re.range "K" "Y")) (re.range "0" "9") (re.union (str.to_re "A") (str.to_re "B") (str.to_re "E") (str.to_re "H") (str.to_re "M") (str.to_re "N") (str.to_re "P") (str.to_re "R") (str.to_re "V") (str.to_re "W") (str.to_re "X") (str.to_re "Y") (re.range "0" "9")))) (str.to_re " ") (re.range "0" "9") ((_ re.loop 2 2) (re.union (str.to_re "A") (str.to_re "B") (re.range "D" "H") (str.to_re "J") (str.to_re "L") (str.to_re "N") (re.range "P" "U") (re.range "W" "Z")))) (str.to_re "GIR 0AA\u{a}")))))
; ^([a-zA-Z][a-zA-Z0-9+-.]*):((\/\/(((([a-zA-Z0-9\-._~!$&'()*+,;=':]|(%[0-9a-fA-F]{2}))*)@)?((\[((((([0-9a-fA-F]{1,4}:){6}|(::([0-9a-fA-F]{1,4}:){5})|(([0-9a-fA-F]{1,4})?::([0-9a-fA-F]{1,4}:){4})|((([0-9a-fA-F]{1,4}:)?[0-9a-fA-F]{1,4})?::([0-9a-fA-F]{1,4}:){3})|((([0-9a-fA-F]{1,4}:){0,2}[0-9a-fA-F]{1,4})?::([0-9a-fA-F]{1,4}:){2})|((([0-9a-fA-F]{1,4}:){0,3}[0-9a-fA-F]{1,4})?::[0-9a-fA-F]{1,4}:)|((([0-9a-fA-F]{1,4}:){0,4}[0-9a-fA-F]{1,4})?::))((([0-9a-fA-F]{1,4}):([0-9a-fA-F]{1,4}))|(([0-9]|(1[0-9]{2})|(2[0-4][0-9])|(25[0-5]))\.([0-9]|(1[0-9]{2})|(2[0-4][0-9])|(25[0-5]))\.([0-9]|(1[0-9]{2})|(2[0-4][0-9])|(25[0-5]))\.([0-9]|(1[0-9]{2})|(2[0-4][0-9])|(25[0-5])))))|((([0-9a-fA-F]{1,4}:){0,5}[0-9a-fA-F]{1,4})?::[0-9a-fA-F]{1,4})|((([0-9a-fA-F]{1,4}:){0,5}[0-9a-fA-F]{1,4})?::))|(v[0-9a-fA-F]+\.[a-zA-Z0-9\-._~!$&'()*+,;=':]+))\])|(([0-9]|(1[0-9]{2})|(2[0-4][0-9])|(25[0-5]))\.([0-9]|(1[0-9]{2})|(2[0-4][0-9])|(25[0-5]))\.([0-9]|(1[0-9]{2})|(2[0-4][0-9])|(25[0-5]))\.([0-9]|(1[0-9]{2})|(2[0-4][0-9])|(25[0-5])))|(([a-zA-Z0-9\-._~!$&'()*+,;=']|(%[0-9a-fA-F]{2}))*))(:[0-9]*)?)((\/([a-zA-Z0-9\-._~!$&'()*+,;=':@]|(%[0-9a-fA-F]{2}))*)*))|(\/?(([a-zA-Z0-9\-._~!$&'()*+,;=':@]|(%[0-9a-fA-F]{2}))+(\/([a-zA-Z0-9\-._~!$&'()*+,;=':@]|(%[0-9a-fA-F]{2}))*)*)?))(\?(([a-zA-Z0-9\-._~!$&'()*+,;=':@\/?]|(%[0-9a-fA-F]{2}))*))?((#(([a-zA-Z0-9\-._~!$&'()*+,;=':@\/?]|(%[0-9a-fA-F]{2}))*)))?$
(assert (not (str.in_re X (re.++ (str.to_re ":") (re.union (re.++ (str.to_re "//") (re.* (re.++ (str.to_re "/") (re.* (re.union (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F")))) (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-") (str.to_re ".") (str.to_re "_") (str.to_re "~") (str.to_re "!") (str.to_re "$") (str.to_re "&") (str.to_re "'") (str.to_re "(") (str.to_re ")") (str.to_re "*") (str.to_re "+") (str.to_re ",") (str.to_re ";") (str.to_re "=") (str.to_re ":") (str.to_re "@"))))) (re.opt (re.++ (re.* (re.union (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F")))) (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-") (str.to_re ".") (str.to_re "_") (str.to_re "~") (str.to_re "!") (str.to_re "$") (str.to_re "&") (str.to_re "'") (str.to_re "(") (str.to_re ")") (str.to_re "*") (str.to_re "+") (str.to_re ",") (str.to_re ";") (str.to_re "=") (str.to_re ":"))) (str.to_re "@"))) (re.union (re.++ (str.to_re "[") (re.union (re.++ (str.to_re "v") (re.+ (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to_re ".") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-") (str.to_re ".") (str.to_re "_") (str.to_re "~") (str.to_re "!") (str.to_re "$") (str.to_re "&") (str.to_re "'") (str.to_re "(") (str.to_re ")") (str.to_re "*") (str.to_re "+") (str.to_re ",") (str.to_re ";") (str.to_re "=") (str.to_re ":")))) (re.++ (re.union ((_ re.loop 6 6) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to_re ":"))) (re.++ (str.to_re "::") ((_ re.loop 5 5) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to_re ":")))) (re.++ (re.opt ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F")))) (str.to_re "::") ((_ re.loop 4 4) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to_re ":")))) (re.++ (re.opt (re.++ (re.opt (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to_re ":"))) ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))))) (str.to_re "::") ((_ re.loop 3 3) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to_re ":")))) (re.++ (re.opt (re.++ ((_ re.loop 0 2) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to_re ":"))) ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))))) (str.to_re "::") ((_ re.loop 2 2) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to_re ":")))) (re.++ (re.opt (re.++ ((_ re.loop 0 3) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to_re ":"))) ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))))) (str.to_re "::") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to_re ":")) (re.++ (re.opt (re.++ ((_ re.loop 0 4) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to_re ":"))) ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))))) (str.to_re "::"))) (re.union (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F")))) (re.++ (re.union (re.range "0" "9") (re.++ (str.to_re "1") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to_re "25") (re.range "0" "5"))) (str.to_re ".") (re.union (re.range "0" "9") (re.++ (str.to_re "1") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to_re "25") (re.range "0" "5"))) (str.to_re ".") (re.union (re.range "0" "9") (re.++ (str.to_re "1") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to_re "25") (re.range "0" "5"))) (str.to_re ".") (re.union (re.range "0" "9") (re.++ (str.to_re "1") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to_re "25") (re.range "0" "5")))))) (re.++ (re.opt (re.++ ((_ re.loop 0 5) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to_re ":"))) ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))))) (str.to_re "::") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F")))) (re.++ (re.opt (re.++ ((_ re.loop 0 5) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to_re ":"))) ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))))) (str.to_re "::"))) (str.to_re "]")) (re.++ (re.union (re.range "0" "9") (re.++ (str.to_re "1") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to_re "25") (re.range "0" "5"))) (str.to_re ".") (re.union (re.range "0" "9") (re.++ (str.to_re "1") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to_re "25") (re.range "0" "5"))) (str.to_re ".") (re.union (re.range "0" "9") (re.++ (str.to_re "1") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to_re "25") (re.range "0" "5"))) (str.to_re ".") (re.union (re.range "0" "9") (re.++ (str.to_re "1") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to_re "25") (re.range "0" "5")))) (re.* (re.union (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F")))) (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-") (str.to_re ".") (str.to_re "_") (str.to_re "~") (str.to_re "!") (str.to_re "$") (str.to_re "&") (str.to_re "'") (str.to_re "(") (str.to_re ")") (str.to_re "*") (str.to_re "+") (str.to_re ",") (str.to_re ";") (str.to_re "=")))) (re.opt (re.++ (str.to_re ":") (re.* (re.range "0" "9"))))) (re.++ (re.opt (str.to_re "/")) (re.opt (re.++ (re.+ (re.union (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F")))) (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-") (str.to_re ".") (str.to_re "_") (str.to_re "~") (str.to_re "!") (str.to_re "$") (str.to_re "&") (str.to_re "'") (str.to_re "(") (str.to_re ")") (str.to_re "*") (str.to_re "+") (str.to_re ",") (str.to_re ";") (str.to_re "=") (str.to_re ":") (str.to_re "@"))) (re.* (re.++ (str.to_re "/") (re.* (re.union (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F")))) (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-") (str.to_re ".") (str.to_re "_") (str.to_re "~") (str.to_re "!") (str.to_re "$") (str.to_re "&") (str.to_re "'") (str.to_re "(") (str.to_re ")") (str.to_re "*") (str.to_re "+") (str.to_re ",") (str.to_re ";") (str.to_re "=") (str.to_re ":") (str.to_re "@"))))))))) (re.opt (re.++ (str.to_re "?") (re.* (re.union (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F")))) (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-") (str.to_re ".") (str.to_re "_") (str.to_re "~") (str.to_re "!") (str.to_re "$") (str.to_re "&") (str.to_re "'") (str.to_re "(") (str.to_re ")") (str.to_re "*") (str.to_re "+") (str.to_re ",") (str.to_re ";") (str.to_re "=") (str.to_re ":") (str.to_re "@") (str.to_re "/") (str.to_re "?"))))) (re.opt (re.++ (str.to_re "#") (re.* (re.union (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F")))) (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-") (str.to_re ".") (str.to_re "_") (str.to_re "~") (str.to_re "!") (str.to_re "$") (str.to_re "&") (str.to_re "'") (str.to_re "(") (str.to_re ")") (str.to_re "*") (str.to_re "+") (str.to_re ",") (str.to_re ";") (str.to_re "=") (str.to_re ":") (str.to_re "@") (str.to_re "/") (str.to_re "?"))))) (str.to_re "\u{a}") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (re.range "+" ".")))))))
; toolbarplace\x2Ecom.*TencentTraveler\d+\x2Fnewsurfer4\x2F.*BysooTBADdcww\x2Edmcast\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "toolbarplace.com") (re.* re.allchar) (str.to_re "TencentTraveler") (re.+ (re.range "0" "9")) (str.to_re "/newsurfer4/") (re.* re.allchar) (str.to_re "BysooTBADdcww.dmcast.com\u{a}")))))
(check-sat)
