(declare-const X String)
; /\.php\?mac\x3d([a-f0-9]{2}\x3a){5}[a-f0-9]{2}$/U
(assert (str.in_re X (re.++ (str.to_re "/.php?mac=") ((_ re.loop 5 5) (re.++ ((_ re.loop 2 2) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re ":"))) ((_ re.loop 2 2) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "/U\u{a}"))))
; myInstance\.myMethod(.*)\(.*myParam.*\)
(assert (str.in_re X (re.++ (str.to_re "myInstance.myMethod") (re.* re.allchar) (str.to_re "(") (re.* re.allchar) (str.to_re "myParam") (re.* re.allchar) (str.to_re ")\u{a}"))))
(check-sat)
