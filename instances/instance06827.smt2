(declare-const X String)
; ^1?[1-2]$|^[1-9]$|^[1]0$
(assert (not (str.in_re X (re.union (re.++ (re.opt (str.to_re "1")) (re.range "1" "2")) (re.range "1" "9") (str.to_re "10\u{a}")))))
; ovplSubject\x3ATencentTravelerClient\x7D\x7BSysuptime\x3A
(assert (str.in_re X (str.to_re "ovplSubject:TencentTravelerClient}{Sysuptime:\u{a}")))
; /filename=[^\n]*\x2eaom/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".aom/i\u{a}"))))
(check-sat)

(exit)
