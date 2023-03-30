(declare-const X String)
; ^[-+]?\d*$
(assert (str.in_re X (re.++ (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.* (re.range "0" "9")) (str.to_re "\u{a}"))))
; /^[A-Z0-9._-]+@[A-Z0-9.-]+\.[A-Z0-9.-]+$/i
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.+ (re.union (re.range "A" "Z") (re.range "0" "9") (str.to_re ".") (str.to_re "_") (str.to_re "-"))) (str.to_re "@") (re.+ (re.union (re.range "A" "Z") (re.range "0" "9") (str.to_re ".") (str.to_re "-"))) (str.to_re ".") (re.+ (re.union (re.range "A" "Z") (re.range "0" "9") (str.to_re ".") (str.to_re "-"))) (str.to_re "/i\u{a}")))))
; SI\|Server\|\d+informationWinInetEvilFTPOSSProxy\x5Chome\/lordofsearch
(assert (not (str.in_re X (re.++ (str.to_re "SI|Server|\u{13}") (re.+ (re.range "0" "9")) (str.to_re "informationWinInetEvilFTPOSSProxy\u{5c}home/lordofsearch\u{a}")))))
; \x2Fbar_pl\x2Fchk_bar\.fcgiTrojanHost\x3A
(assert (not (str.in_re X (str.to_re "/bar_pl/chk_bar.fcgiTrojanHost:\u{a}"))))
; on\w+Host\x3AComputerKeylogger\x2EcomHost\x3AUser-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "on") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Host:ComputerKeylogger.comHost:User-Agent:\u{a}"))))
(check-sat)

(exit)
