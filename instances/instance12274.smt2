(declare-const X String)
; ^[0-9]{5}$
(assert (str.in_re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to_re "\u{a}"))))
; /\r\nLocation\x3a\x20https\x3a\x2f{2}dl\.dropboxusercontent\.com\/[a-zA-Z\d\x2f]{5,32}\/avcheck\.exe\r\n\r\n$/H
(assert (not (str.in_re X (re.++ (str.to_re "/\u{d}\u{a}Location: https:") ((_ re.loop 2 2) (str.to_re "/")) (str.to_re "dl.dropboxusercontent.com/") ((_ re.loop 5 32) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "/"))) (str.to_re "/avcheck.exe\u{d}\u{a}\u{d}\u{a}/H\u{a}")))))
; ^[a-zA-Z_:]+[a-zA-Z_:\-\.\d]*$
(assert (str.in_re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to_re "_") (str.to_re ":"))) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to_re "_") (str.to_re ":") (str.to_re "-") (str.to_re ".") (re.range "0" "9"))) (str.to_re "\u{a}"))))
(check-sat)
