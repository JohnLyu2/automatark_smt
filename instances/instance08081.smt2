(declare-const X String)
; User-Agent\x3AHost\x3ATeomaBarHost\x3AHoursHost\x3A
(assert (str.in_re X (str.to_re "User-Agent:Host:TeomaBarHost:HoursHost:\u{a}")))
; /\?action=\w+gen&v=\d+/U
(assert (str.in_re X (re.++ (str.to_re "/?action=") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "gen&v=") (re.+ (re.range "0" "9")) (str.to_re "/U\u{a}"))))
(check-sat)

(exit)
