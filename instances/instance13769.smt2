(declare-const X String)
; Host\x3A\dKeylogger.*Onetrustyfiles\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.range "0" "9") (str.to_re "Keylogger") (re.* re.allchar) (str.to_re "Onetrustyfiles.com\u{a}"))))
; /filename=[a-z]+\.jat/
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.+ (re.range "a" "z")) (str.to_re ".jat/\u{a}")))))
; ^\d{0,2}(\.\d{1,4})? *%?$
(assert (not (str.in_re X (re.++ ((_ re.loop 0 2) (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 4) (re.range "0" "9")))) (re.* (str.to_re " ")) (re.opt (str.to_re "%")) (str.to_re "\u{a}")))))
; /\x2esetTimeOut\s*\x28\s*[\x22\x27][^\x28]+?\x2ecloseDoc\s*\x28[^\x29]*?\x29[^\x28]+?\x2eopenDoc\s*\x28[^\x29]*?\x29[^\x29]*?[\x22\x27]\s*,\s*[^\x29]*?\x29/i
(assert (not (str.in_re X (re.++ (str.to_re "/.setTimeOut") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "(") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re "\u{22}") (str.to_re "'")) (re.+ (re.comp (str.to_re "("))) (str.to_re ".closeDoc") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "(") (re.* (re.comp (str.to_re ")"))) (str.to_re ")") (re.+ (re.comp (str.to_re "("))) (str.to_re ".openDoc") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "(") (re.* (re.comp (str.to_re ")"))) (str.to_re ")") (re.* (re.comp (str.to_re ")"))) (re.union (str.to_re "\u{22}") (str.to_re "'")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ",") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* (re.comp (str.to_re ")"))) (str.to_re ")/i\u{a}")))))
(check-sat)
