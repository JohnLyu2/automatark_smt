(declare-const X String)
; /setInterval\s*\x28[^\x29]+\x2efocus\x28\x29/smi
(assert (not (str.in_re X (re.++ (str.to_re "/setInterval") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "(") (re.+ (re.comp (str.to_re ")"))) (str.to_re ".focus()/smi\u{a}")))))
; toolbar\.wishbone\.com\s+GET.*toowww\.123mania\.com\x2EphpLibrary
(assert (str.in_re X (re.++ (str.to_re "toolbar.wishbone.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "GET") (re.* re.allchar) (str.to_re "toowww.123mania.com.phpLibrary\u{a}"))))
(check-sat)
