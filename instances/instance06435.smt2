(declare-const X String)
; OSSProxyHost\x3ASubject\x3as_sq=aolsnssignin
(assert (not (str.in_re X (str.to_re "OSSProxyHost:Subject:s_sq=aolsnssignin\u{a}"))))
; linkautomatici\x2Ecom\dBasic\d+Host\x3AFloodedFictionalUser-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "linkautomatici.com") (re.range "0" "9") (str.to_re "Basic") (re.+ (re.range "0" "9")) (str.to_re "Host:FloodedFictionalUser-Agent:\u{a}")))))
; ^([0-1]?[0-9]|[2][0-3])[:|.]([0-5][0-9])$
(assert (str.in_re X (re.++ (re.union (re.++ (re.opt (re.range "0" "1")) (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) (re.union (str.to_re ":") (str.to_re "|") (str.to_re ".")) (str.to_re "\u{a}") (re.range "0" "5") (re.range "0" "9"))))
; Runner.*\x2Ehtml[^\n\r]*NetControl\x2EServer\d+media\x2Edxcdirect\x2Ecom\.smx\?PASSW=SAH
(assert (not (str.in_re X (re.++ (str.to_re "Runner") (re.* re.allchar) (str.to_re ".html") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "NetControl.Server\u{13}") (re.+ (re.range "0" "9")) (str.to_re "media.dxcdirect.com.smx?PASSW=SAH\u{a}")))))
; /[^imsxeADSUXu]([imsxeADSUXu]*)$/
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "i") (str.to_re "m") (str.to_re "s") (str.to_re "x") (str.to_re "e") (str.to_re "A") (str.to_re "D") (str.to_re "S") (str.to_re "U") (str.to_re "X") (str.to_re "u")) (re.* (re.union (str.to_re "i") (str.to_re "m") (str.to_re "s") (str.to_re "x") (str.to_re "e") (str.to_re "A") (str.to_re "D") (str.to_re "S") (str.to_re "U") (str.to_re "X") (str.to_re "u"))) (str.to_re "/\u{a}")))))
(check-sat)
