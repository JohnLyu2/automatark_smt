(declare-const X String)
; WinSession\w+asdbiz\x2Ebizfrom\x7croogoo\x7cCurrentiOpus
(assert (not (str.in_re X (re.++ (str.to_re "WinSession") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "asdbiz.bizfrom|roogoo|CurrentiOpus\u{a}")))))
; Subject\x3AAlexaOnline\x2521\x2521\x2521
(assert (str.in_re X (str.to_re "Subject:AlexaOnline%21%21%21\u{a}")))
(check-sat)
