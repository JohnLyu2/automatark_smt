(declare-const X String)
; /filename=[^\n]*\x2ecov/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".cov/i\u{a}")))))
; ReportIterenetUser-Agent\x3AHost\x3AKEYLOGGER\x2Fbar_pl\x2Fchk_bar\.fcgi
(assert (str.in_re X (str.to_re "ReportIterenetUser-Agent:Host:KEYLOGGER/bar_pl/chk_bar.fcgi\u{a}")))
; (\w+),[^(]+\((\w+)\)\s+(\w+)\s+(\d+)/(\d+)\s+(\d+)?
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re ",") (re.+ (re.comp (str.to_re "("))) (str.to_re "(") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re ")") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.+ (re.range "0" "9")) (str.to_re "/") (re.+ (re.range "0" "9")) (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (re.+ (re.range "0" "9"))) (str.to_re "\u{a}")))))
(check-sat)

(exit)
