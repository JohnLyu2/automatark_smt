(declare-const X String)
; ^[+-]?\d*(([,.]\d{3})+)?([,.]\d+)?([eE][+-]?\d+)?$
(assert (str.in_re X (re.++ (re.opt (re.union (str.to_re "+") (str.to_re "-"))) (re.* (re.range "0" "9")) (re.opt (re.+ (re.++ (re.union (str.to_re ",") (str.to_re ".")) ((_ re.loop 3 3) (re.range "0" "9"))))) (re.opt (re.++ (re.union (str.to_re ",") (str.to_re ".")) (re.+ (re.range "0" "9")))) (re.opt (re.++ (re.union (str.to_re "e") (str.to_re "E")) (re.opt (re.union (str.to_re "+") (str.to_re "-"))) (re.+ (re.range "0" "9")))) (str.to_re "\u{a}"))))
; User-Agent\x3AFrom\x3Awww\x2Eonlinecasinoextra\x2EcomHost\x3A
(assert (not (str.in_re X (str.to_re "User-Agent:From:www.onlinecasinoextra.comHost:\u{a}"))))
; ^\s*
(assert (str.in_re X (re.++ (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}"))))
; HWAE[^\n\r]*Email[^\n\r]*User-Agent\x3AUser-Agent\x3awowokayHost\x3A
(assert (str.in_re X (re.++ (str.to_re "HWAE") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Email") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:User-Agent:wowokayHost:\u{a}"))))
; ClientsConnected-\d+online-casino-searcher\.com\s+Warezxmlns\x3A
(assert (str.in_re X (re.++ (str.to_re "ClientsConnected-") (re.+ (re.range "0" "9")) (str.to_re "online-casino-searcher.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Warezxmlns:\u{a}"))))
(check-sat)
