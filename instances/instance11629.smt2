(declare-const X String)
; \x7D\x7BPort\x3AHost\x3Amqnqgijmng\x2fojNavhelperUser-Agent\x3A
(assert (not (str.in_re X (str.to_re "}{Port:Host:mqnqgijmng/ojNavhelperUser-Agent:\u{a}"))))
; aohobygi\x2fzwiw\s+\+The\+password\+is\x3A
(assert (not (str.in_re X (re.++ (str.to_re "aohobygi/zwiw") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "+The+password+is:\u{a}")))))
; /filename=[^\n]*\x2eswf/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".swf/i\u{a}")))))
; (077|078|079)\s?\d{2}\s?\d{6}
(assert (not (str.in_re X (re.++ (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 6 6) (re.range "0" "9")) (str.to_re "\u{a}07") (re.union (str.to_re "7") (str.to_re "8") (str.to_re "9"))))))
; \x28BDLL\x29Googledll\x3F
(assert (str.in_re X (str.to_re "(BDLL)\u{13}Googledll?\u{a}")))
(check-sat)
