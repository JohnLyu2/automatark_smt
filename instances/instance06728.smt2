(declare-const X String)
; ChildWebGuardian\d+Subject\x3A
(assert (str.in_re X (re.++ (str.to_re "ChildWebGuardian") (re.+ (re.range "0" "9")) (str.to_re "Subject:\u{a}"))))
; /filename=[^\n]*\x2ewmf/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wmf/i\u{a}")))))
(check-sat)
