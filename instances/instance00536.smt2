(declare-const X String)
; User-Agent\x3A\d+Host\x3AconfigINTERNAL\.iniFictionaljspv\x3B
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "Host:configINTERNAL.iniFictionaljspv;\u{a}"))))
(check-sat)
