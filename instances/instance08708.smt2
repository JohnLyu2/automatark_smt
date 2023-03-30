(declare-const X String)
; GmbH\d+Host\x3A\w+adblock\x2Elinkz\x2EcomUser-Agent\x3Aemail
(assert (str.in_re X (re.++ (str.to_re "GmbH") (re.+ (re.range "0" "9")) (str.to_re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "adblock.linkz.comUser-Agent:email\u{a}"))))
; ^([\w\s\W]+[\w\W]?)\s([\d\-\\\/\w]*)?
(assert (str.in_re X (re.++ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (re.opt (re.* (re.union (re.range "0" "9") (str.to_re "-") (str.to_re "\u{5c}") (str.to_re "/") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (str.to_re "\u{a}") (re.+ (re.union (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (re.union (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))))
; uuid=\s+User-Agent\x3a\d+\x5Chome\/lordofsearch
(assert (str.in_re X (re.++ (str.to_re "uuid=") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "\u{5c}home/lordofsearch\u{a}"))))
; ^(((1[6-9]|[2-9]\d)\d{2}([-|\/])(((0?[13578]|1[02])([-|\/])31)|((0?[1,3-9]|1[0-2])([-|\/])(29|30))))|((((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00)))([-|\/])0?2([-|\/])29)|((1[6-9]|[2-9]\d)\d{2})([-|\/])((0?[1-9])|(1[0-2]))([-|\/])(0?[1-9]|1\d|2[0-8]))$
(assert (str.in_re X (re.++ (re.union (re.++ (re.union (re.++ (str.to_re "1") (re.range "6" "9")) (re.++ (re.range "2" "9") (re.range "0" "9"))) ((_ re.loop 2 2) (re.range "0" "9")) (re.union (str.to_re "-") (str.to_re "|") (str.to_re "/")) (re.union (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "2")))) (re.union (str.to_re "-") (str.to_re "|") (str.to_re "/")) (str.to_re "31")) (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.union (str.to_re "1") (str.to_re ",") (re.range "3" "9"))) (re.++ (str.to_re "1") (re.range "0" "2"))) (re.union (str.to_re "-") (str.to_re "|") (str.to_re "/")) (re.union (str.to_re "29") (str.to_re "30"))))) (re.++ (re.union (re.++ (re.union (re.++ (str.to_re "1") (re.range "6" "9")) (re.++ (re.range "2" "9") (re.range "0" "9"))) (re.union (re.++ (str.to_re "0") (re.union (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6"))))) (re.++ (re.union (str.to_re "16") (re.++ (re.union (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6")))) (str.to_re "00"))) (re.union (str.to_re "-") (str.to_re "|") (str.to_re "/")) (re.opt (str.to_re "0")) (str.to_re "2") (re.union (str.to_re "-") (str.to_re "|") (str.to_re "/")) (str.to_re "29")) (re.++ (re.union (str.to_re "-") (str.to_re "|") (str.to_re "/")) (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (re.union (str.to_re "-") (str.to_re "|") (str.to_re "/")) (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "8"))) (re.union (re.++ (str.to_re "1") (re.range "6" "9")) (re.++ (re.range "2" "9") (re.range "0" "9"))) ((_ re.loop 2 2) (re.range "0" "9")))) (str.to_re "\u{a}"))))
; /(^|&)(db(username|password|)|cp(username|password|domain))=[^&]*?(\x27|%27)[^&]*?([\x3b\x60]|\x24\x28|%3b|%60|%24%28)/Pmi
(assert (str.in_re X (re.++ (str.to_re "/&") (re.union (re.++ (str.to_re "db") (re.union (str.to_re "username") (str.to_re "password"))) (re.++ (str.to_re "cp") (re.union (str.to_re "username") (str.to_re "password") (str.to_re "domain")))) (str.to_re "=") (re.* (re.comp (str.to_re "&"))) (re.union (str.to_re "'") (str.to_re "%27")) (re.* (re.comp (str.to_re "&"))) (re.union (str.to_re "$(") (str.to_re "%3b") (str.to_re "%60") (str.to_re "%24%28") (str.to_re ";") (str.to_re "`")) (str.to_re "/Pmi\u{a}"))))
(check-sat)

(exit)
