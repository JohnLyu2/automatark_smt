(declare-const X String)
; \x7D\x7BTrojan\x3A\w+by\w+dddlogin\x2Edudu\x2EcomSurveillanceIPOblivionhoroscope
(assert (not (str.in_re X (re.++ (str.to_re "}{Trojan:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "by") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "dddlogin.dudu.comSurveillance\u{13}IPOblivionhoroscope\u{a}")))))
; /Host\x3a[^\n]+\x3a\d+\x0d\x0a/
(assert (not (str.in_re X (re.++ (str.to_re "/Host:") (re.+ (re.comp (str.to_re "\u{a}"))) (str.to_re ":") (re.+ (re.range "0" "9")) (str.to_re "\u{d}\u{a}/\u{a}")))))
; ovpl\s+\x7D\x7BPort\x3A.*SOAPAction\x3A.*adfsgecoiwnfHost\x3A\x3Fsearch\x3D
(assert (str.in_re X (re.++ (str.to_re "ovpl") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "}{Port:") (re.* re.allchar) (str.to_re "SOAPAction:") (re.* re.allchar) (str.to_re "adfsgecoiwnf\u{1b}Host:?search=\u{a}"))))
; version.*Host\x3a\s+iWonHost\x3apjpoptwql\x2frlnj
(assert (not (str.in_re X (re.++ (str.to_re "version") (re.* re.allchar) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "iWonHost:pjpoptwql/rlnj\u{a}")))))
; User-Agent\x3ARunnerads\.grokads\.comHost\x3Amcndvwoemn\x2flvv\.jde
(assert (not (str.in_re X (str.to_re "User-Agent:Runnerads.grokads.comHost:mcndvwoemn/lvv.jde\u{a}"))))
(check-sat)
