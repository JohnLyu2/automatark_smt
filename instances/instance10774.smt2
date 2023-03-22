(declare-const X String)
; /\x2ejpg([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.jpg") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; weather2ResultX-Sender\x3A
(assert (str.in_re X (str.to_re "weather2ResultX-Sender:\u{13}\u{a}")))
; Apofis.*Port\x2E\s+\x2FNFO\x2CRegistered
(assert (not (str.in_re X (re.++ (str.to_re "Apofis") (re.* re.allchar) (str.to_re "Port.") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/NFO,Registered\u{a}")))))
; ^[a-zA-Z]\w{3,14}$
(assert (str.in_re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) ((_ re.loop 3 14) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{a}"))))
(check-sat)
