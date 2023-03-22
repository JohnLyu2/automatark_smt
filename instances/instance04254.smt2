(declare-const X String)
; User-Agent\x3AHost\x3ATeomaBarHost\x3AHoursHost\x3A
(assert (str.in_re X (str.to_re "User-Agent:Host:TeomaBarHost:HoursHost:\u{a}")))
(check-sat)
