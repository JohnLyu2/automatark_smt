(declare-const X String)
; ^((67\d{2})|(4\d{3})|(5[1-5]\d{2})|(6011))(-?\s?\d{4}){3}|(3[4,7])\d{2}-?\s?\d{6}-?\s?\d{5}$
(assert (str.in_re X (re.union (re.++ (re.union (re.++ (str.to_re "67") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "4") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to_re "5") (re.range "1" "5") ((_ re.loop 2 2) (re.range "0" "9"))) (str.to_re "6011")) ((_ re.loop 3 3) (re.++ (re.opt (str.to_re "-")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 4 4) (re.range "0" "9"))))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to_re "-")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 6 6) (re.range "0" "9")) (re.opt (str.to_re "-")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 5 5) (re.range "0" "9")) (str.to_re "\u{a}3") (re.union (str.to_re "4") (str.to_re ",") (str.to_re "7"))))))
; forum=From\x3acomTencentTravelerBackAtTaCkExplorer
(assert (str.in_re X (str.to_re "forum=From:comTencentTravelerBackAtTaCkExplorer\u{a}")))
; Host\x3a\s+Agentbody=\x2521\x2521\x2521OptixSubject\x3A
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Agentbody=%21%21%21Optix\u{13}Subject:\u{a}"))))
(check-sat)
