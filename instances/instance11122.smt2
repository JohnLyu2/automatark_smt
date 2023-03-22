(declare-const X String)
; ^[A-Z]{4}[1-8](\d){2}$
(assert (str.in_re X (re.++ ((_ re.loop 4 4) (re.range "A" "Z")) (re.range "1" "8") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "\u{a}"))))
; UI2ftpquickbrutehttp\x3A\x2F\x2Fdiscounts\x2Eshopathome\x2Ecom\x2Fframeset\x2Easp\?
(assert (str.in_re X (str.to_re "UI2ftpquickbrutehttp://discounts.shopathome.com/frameset.asp?\u{a}")))
; forum=From\x3acomTencentTravelerBackAtTaCkExplorer
(assert (str.in_re X (str.to_re "forum=From:comTencentTravelerBackAtTaCkExplorer\u{a}")))
(check-sat)
