(declare-const X String)
; <[^>]*?>
(assert (str.in_re X (re.++ (str.to_re "<") (re.* (re.comp (str.to_re ">"))) (str.to_re ">\u{a}"))))
; ^(\d)(\.)(\d)+\s(x)\s(10)(e|E|\^)(-)?(\d)+$
(assert (not (str.in_re X (re.++ (re.range "0" "9") (str.to_re ".") (re.+ (re.range "0" "9")) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "x") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "10") (re.union (str.to_re "e") (str.to_re "E") (str.to_re "^")) (re.opt (str.to_re "-")) (re.+ (re.range "0" "9")) (str.to_re "\u{a}")))))
; url=Referer\x3AHost\x3AWelcome\x2FcommunicatortbGateCrasher4\x2e8\x2e4\x7D\x7BTrojan\x3AareSubject\x3a
(assert (str.in_re X (str.to_re "url=Referer:Host:Welcome/communicatortbGateCrasher4.8.4}{Trojan:areSubject:\u{a}")))
(check-sat)
