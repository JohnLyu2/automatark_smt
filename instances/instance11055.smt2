(declare-const X String)
; activityHWAEHost\x3aMyWayServidor\x2EHANDYEmail
(assert (not (str.in_re X (str.to_re "activityHWAEHost:MyWayServidor.\u{13}HANDYEmail\u{a}"))))
; engineResultUser-Agent\x3A
(assert (str.in_re X (str.to_re "engineResultUser-Agent:\u{a}")))
; (\d+)?-?(\d+)-(\d+)
(assert (not (str.in_re X (re.++ (re.opt (re.+ (re.range "0" "9"))) (re.opt (str.to_re "-")) (re.+ (re.range "0" "9")) (str.to_re "-") (re.+ (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)

(exit)
