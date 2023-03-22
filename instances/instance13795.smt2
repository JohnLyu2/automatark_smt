(declare-const X String)
; ookflolfctm\x2fnmot\.fmu
(assert (str.in_re X (str.to_re "ookflolfctm/nmot.fmu\u{a}")))
; User-Agent\x3A\w+Minutes\sHost\x3Awww\x2Eeblocs\x2EcomHost\x3ARunnerHost\x3a\x2Ehtml
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Minutes") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Host:www.eblocs.com\u{1b}Host:RunnerHost:.html\u{a}"))))
; From\x3A.*Host\x3A\s+Downloadfowclxccdxn\x2fuxwn\.ddy
(assert (str.in_re X (re.++ (str.to_re "From:") (re.* re.allchar) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Downloadfowclxccdxn/uxwn.ddy\u{a}"))))
(check-sat)
