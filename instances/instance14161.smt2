(declare-const X String)
; /gate\x2ephp\x3freg=[a-zA-Z]{15}/U
(assert (str.in_re X (re.++ (str.to_re "/gate.php?reg=") ((_ re.loop 15 15) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "/U\u{a}"))))
; ToolbarUser-Agent\x3AFrom\x3A
(assert (str.in_re X (str.to_re "ToolbarUser-Agent:From:\u{a}")))
; This\s+\x7D\x7BPassword\x3A\d+
(assert (not (str.in_re X (re.++ (str.to_re "This") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "}{Password:\u{1b}") (re.+ (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
