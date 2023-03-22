(declare-const X String)
; User-Agent\x3A\d+Host\x3AconfigINTERNAL\.iniFictionaljspv\x3B
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "Host:configINTERNAL.iniFictionaljspv;\u{a}"))))
; Microsoft\w+Toolbar\x22StarLogger\x22
(assert (not (str.in_re X (re.++ (str.to_re "Microsoft") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Toolbar\u{22}StarLogger\u{22}\u{a}")))))
(check-sat)
