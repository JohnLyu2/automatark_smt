(declare-const X String)
; ^((\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*)\s*[,]{0,1}\s*)+$
(assert (str.in_re X (re.++ (re.+ (re.++ (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (str.to_re ",")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.++ (re.union (str.to_re "-") (str.to_re "+") (str.to_re ".")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (str.to_re "@") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.++ (re.union (str.to_re "-") (str.to_re ".")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (str.to_re ".") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.++ (re.union (str.to_re "-") (str.to_re ".")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))))) (str.to_re "\u{a}"))))
; Toolbar\x5Chome\/lordofsearchthis
(assert (not (str.in_re X (str.to_re "Toolbar\u{5c}home/lordofsearchthis\u{a}"))))
; Download\d+ocllceclbhs\x2fgth
(assert (str.in_re X (re.++ (str.to_re "Download") (re.+ (re.range "0" "9")) (str.to_re "ocllceclbhs/gth\u{a}"))))
; \x7D\x7BUser\x3A\d+Host\x3AUser-Agent\x3Aadblock\x2Elinkz\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "}{User:") (re.+ (re.range "0" "9")) (str.to_re "Host:User-Agent:adblock.linkz.com\u{a}")))))
(check-sat)
