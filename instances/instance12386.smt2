(declare-const X String)
; /filename=[^\n]*\x2etif/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".tif/i\u{a}"))))
; AgentCSmtpsidebar\.activeshopper\.comTry2Find
(assert (not (str.in_re X (str.to_re "AgentCSmtpsidebar.activeshopper.comTry2Find\u{a}"))))
; \x2Fcs\x2Fpop4\x2FUser-Agent\x3Akitwww\x2Eborlander\x2Ecom\x2Ecn
(assert (str.in_re X (str.to_re "/cs/pop4/User-Agent:kitwww.borlander.com.cn\u{a}")))
; \x2Frss\d+Host\x3aTCP\x2FAD\x2FULOGNetBusCookie\x3a
(assert (not (str.in_re X (re.++ (str.to_re "/rss") (re.+ (re.range "0" "9")) (str.to_re "Host:TCP/AD/ULOGNetBusCookie:\u{a}")))))
; ^\w*[-]*\w*\\\w*$
(assert (str.in_re X (re.++ (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (str.to_re "-")) (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{5c}") (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{a}"))))
(check-sat)
