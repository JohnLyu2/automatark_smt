(declare-const X String)
; NetControl\x2EServerNetTrackerSiLENTHost\x3A
(assert (str.in_re X (str.to_re "NetControl.Server\u{13}NetTrackerSiLENTHost:\u{a}")))
; /encoding\x3D[\x22\x27][^\x22\x27]{1024}/
(assert (not (str.in_re X (re.++ (str.to_re "/encoding=") (re.union (str.to_re "\u{22}") (str.to_re "'")) ((_ re.loop 1024 1024) (re.union (str.to_re "\u{22}") (str.to_re "'"))) (str.to_re "/\u{a}")))))
; /\x2eslk([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.slk") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; [1-8][0-9]{2}[0-9]{5}
(assert (not (str.in_re X (re.++ (re.range "1" "8") ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 5 5) (re.range "0" "9")) (str.to_re "\u{a}")))))
; /\x2ejpf([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.jpf") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
(check-sat)

(exit)
