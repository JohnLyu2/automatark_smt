(declare-const X String)
; ovpl\s+\x7D\x7BPort\x3A.*SOAPAction\x3A.*adfsgecoiwnfHost\x3A\x3Fsearch\x3D
(assert (str.in_re X (re.++ (str.to_re "ovpl") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "}{Port:") (re.* re.allchar) (str.to_re "SOAPAction:") (re.* re.allchar) (str.to_re "adfsgecoiwnf\u{1b}Host:?search=\u{a}"))))
; ^([A-Z0-9?.+-])+([,]([A-Z0-9?.+-])+)*$
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "A" "Z") (re.range "0" "9") (str.to_re "?") (str.to_re ".") (str.to_re "+") (str.to_re "-"))) (re.* (re.++ (str.to_re ",") (re.+ (re.union (re.range "A" "Z") (re.range "0" "9") (str.to_re "?") (str.to_re ".") (str.to_re "+") (str.to_re "-"))))) (str.to_re "\u{a}")))))
; Host\x3a\s+is\s+User-Agent\x3Acid=tb\x2eCookie\x3A
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "is") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:cid=tb.Cookie:\u{a}")))))
(check-sat)
