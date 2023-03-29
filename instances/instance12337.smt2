(declare-const X String)
; /\r\nLocation\x3a\x20https\x3a\x2f{2}dl\.dropboxusercontent\.com\/[a-zA-Z\d\x2f]{5,32}\/avcheck\.exe\r\n\r\n$/H
(assert (not (str.in_re X (re.++ (str.to_re "/\u{d}\u{a}Location: https:") ((_ re.loop 2 2) (str.to_re "/")) (str.to_re "dl.dropboxusercontent.com/") ((_ re.loop 5 32) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "/"))) (str.to_re "/avcheck.exe\u{d}\u{a}\u{d}\u{a}/H\u{a}")))))
; (\d+)?-?(\d+)-(\d+)
(assert (str.in_re X (re.++ (re.opt (re.+ (re.range "0" "9"))) (re.opt (str.to_re "-")) (re.+ (re.range "0" "9")) (str.to_re "-") (re.+ (re.range "0" "9")) (str.to_re "\u{a}"))))
; ppcdomain\x2Eco\x2Euk.*Spy\-Locked\s+Exploiter\w+\x2Fr\x2Fkeys\x2FkeysS\x3aUsers\x5cIterenet
(assert (str.in_re X (re.++ (str.to_re "ppcdomain.co.uk") (re.* re.allchar) (str.to_re "Spy-Locked") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Exploiter") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "/r/keys/keysS:Users\u{5c}Iterenet\u{a}"))))
; upgrade\x2Eqsrch\x2Einfo.*report.*Host\x3A.*Host\x3Akwd-i%3fUser-Agent\x3Awww\x2eproventactics\x2ecom
(assert (str.in_re X (re.++ (str.to_re "upgrade.qsrch.info") (re.* re.allchar) (str.to_re "report") (re.* re.allchar) (str.to_re "Host:") (re.* re.allchar) (str.to_re "Host:kwd-i%3fUser-Agent:www.proventactics.com\u{a}"))))
; ^[a-zA-Z]+(\.[a-zA-Z]+)+$
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.+ (re.++ (str.to_re ".") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))))) (str.to_re "\u{a}")))))
(check-sat)

(exit)
