(declare-const X String)
; Host\x3a\w+Host\x3A.*Host\x3aToolbarServerserver\x7D\x7BSysuptime\x3A
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Host:") (re.* re.allchar) (str.to_re "Host:ToolbarServerserver}{Sysuptime:\u{a}")))))
; (NL-?)?[0-9]{9}B[0-9]{2}
(assert (not (str.in_re X (re.++ (re.opt (re.++ (str.to_re "NL") (re.opt (str.to_re "-")))) ((_ re.loop 9 9) (re.range "0" "9")) (str.to_re "B") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "\u{a}")))))
; /filename=[^\n]*\x2em3u/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".m3u/i\u{a}"))))
(check-sat)
