(declare-const X String)
; forum=From\x3acomTencentTravelerBackAtTaCkExplorer
(assert (not (str.in_re X (str.to_re "forum=From:comTencentTravelerBackAtTaCkExplorer\u{a}"))))
; Information\s+Host\x3A.*com
(assert (not (str.in_re X (re.++ (str.to_re "Information") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.* re.allchar) (str.to_re "com\u{a}")))))
; hotbar\s+ocllceclbhs\x2fgthftpquickbruteUser-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "hotbar") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ocllceclbhs/gthftpquickbruteUser-Agent:\u{a}"))))
; /\/[a-zA-Z_-]+\.rtf$/U
(assert (str.in_re X (re.++ (str.to_re "//") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to_re "_") (str.to_re "-"))) (str.to_re ".rtf/U\u{a}"))))
; securityon\x3AHost\x3ARedirector\x22ServerHost\x3A
(assert (str.in_re X (str.to_re "securityon:Host:Redirector\u{22}ServerHost:\u{a}")))
(check-sat)
