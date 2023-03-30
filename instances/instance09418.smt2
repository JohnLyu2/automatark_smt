(declare-const X String)
; \b(0[0-9]|1[0-1])(\:)(0[0-9]|1[0-9]|2[0-9]|3[0-9]|4[0-9]|5[0-9])(\:)(0[0-9]|1[0-9]|2[0-9]|3[0-9]|4[0-9]|5[0-9])\b
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re "0") (re.range "0" "9")) (re.++ (str.to_re "1") (re.range "0" "1"))) (str.to_re ":") (re.union (re.++ (str.to_re "0") (re.range "0" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.range "0" "9")) (re.++ (str.to_re "4") (re.range "0" "9")) (re.++ (str.to_re "5") (re.range "0" "9"))) (str.to_re ":") (re.union (re.++ (str.to_re "0") (re.range "0" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.range "0" "9")) (re.++ (str.to_re "4") (re.range "0" "9")) (re.++ (str.to_re "5") (re.range "0" "9"))) (str.to_re "\u{a}")))))
; \x7D\x7BTrojan\x3AUser-Agent\x3AbyHost\x3A\xb0\xae\xb6\xf9\xcd\xf8\xb5\xc1
(assert (str.in_re X (str.to_re "}{Trojan:User-Agent:byHost:\u{b0}\u{ae}\u{b6}\u{f9}\u{cd}\u{f8}\u{b5}\u{c1}\u{a}")))
; (GB-?)?([1-9][0-9]{2}\ ?[0-9]{4}\ ?[0-9]{2})|([1-9][0-9]{2}\ ?[0-9]{4}\ ?[0-9]{2}\ ?[0-9]{3})|((GD|HA)[0-9]{3})
(assert (not (str.in_re X (re.union (re.++ (re.opt (re.++ (str.to_re "GB") (re.opt (str.to_re "-")))) (re.range "1" "9") ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to_re " ")) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to_re " ")) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (re.range "1" "9") ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to_re " ")) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to_re " ")) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to_re " ")) ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to_re "\u{a}") (re.union (str.to_re "GD") (str.to_re "HA")) ((_ re.loop 3 3) (re.range "0" "9")))))))
; ^(((\.\.){1}/)*|(/){1})?(([a-zA-Z0-9]*)/)*([a-zA-Z0-9]*)+([.jpg]|[.gif])+$
(assert (str.in_re X (re.++ (re.opt (re.union (re.* (re.++ ((_ re.loop 1 1) (str.to_re "..")) (str.to_re "/"))) ((_ re.loop 1 1) (str.to_re "/")))) (re.* (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "/"))) (re.+ (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")))) (re.+ (re.union (str.to_re ".") (str.to_re "j") (str.to_re "p") (str.to_re "g") (str.to_re "i") (str.to_re "f"))) (str.to_re "\u{a}"))))
(check-sat)

(exit)
