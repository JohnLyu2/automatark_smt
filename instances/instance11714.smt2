(declare-const X String)
; /filename=[^\n]*\x2ewps/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wps/i\u{a}")))))
; ovplSubject\x3ATencentTravelerClient\x7D\x7BSysuptime\x3A
(assert (not (str.in_re X (str.to_re "ovplSubject:TencentTravelerClient}{Sysuptime:\u{a}"))))
(check-sat)

(exit)
