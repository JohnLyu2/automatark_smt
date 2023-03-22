(declare-const X String)
; Host\x3A\d+Host\x3A.*communitytipHost\x3AGirafaClient
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "Host:") (re.* re.allchar) (str.to_re "communitytipHost:GirafaClient\u{13}\u{a}")))))
(check-sat)
