(declare-const X String)
; ^(([a-zA-Z0-9]+([\-])?[a-zA-Z0-9]+)+(\.)?)+[a-zA-Z]{2,6}$
(assert (str.in_re X (re.++ (re.+ (re.++ (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (re.opt (str.to_re "-")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))) (re.opt (str.to_re ".")))) ((_ re.loop 2 6) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "\u{a}"))))
; User-Agent\x3A\w+Minutes\sHost\x3Awww\x2Eeblocs\x2EcomHost\x3ARunnerHost\x3a\x2Ehtml
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Minutes") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Host:www.eblocs.com\u{1b}Host:RunnerHost:.html\u{a}"))))
; \x2Fbar_pl\x2Fshdoclc\.fcgi\w+Referer\x3A\d+\x2Fbar_pl\x2Fshdoclc\.fcgiareHost\x3A
(assert (not (str.in_re X (re.++ (str.to_re "/bar_pl/shdoclc.fcgi") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Referer:") (re.+ (re.range "0" "9")) (str.to_re "/bar_pl/shdoclc.fcgiareHost:\u{a}")))))
; /\/\d+\.mp3$/U
(assert (not (str.in_re X (re.++ (str.to_re "//") (re.+ (re.range "0" "9")) (str.to_re ".mp3/U\u{a}")))))
; clvompycem\x2fcen\.vcnHost\x3AUser-Agent\x3A\x0d\x0a
(assert (not (str.in_re X (str.to_re "clvompycem/cen.vcnHost:User-Agent:\u{d}\u{a}\u{a}"))))
(check-sat)

(exit)
