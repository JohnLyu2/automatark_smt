(declare-const X String)
; Server\s+Basic\d+action\x2EpioletHost\x3AIP-www\x2Einternetadvertisingcompany\x2Ebiz
(assert (str.in_re X (re.++ (str.to_re "Server") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Basic") (re.+ (re.range "0" "9")) (str.to_re "action.pioletHost:IP-www.internetadvertisingcompany.biz\u{a}"))))
; ^([A-Z|a-z|&]{3})(([0-9]{2})([0][13456789]|[1][012])([0][1-9]|[12][\d]|[3][0])|([0-9]{2})([0][13578]|[1][02])([0][1-9]|[12][\d]|[3][01])|([02468][048]|[13579][26])([0][2])([0][1-9]|[12][\d])|([1-9]{2})([0][2])([0][1-9]|[12][0-8]))(\w{2}[A|a|0-9]{1})$|^([A-Z|a-z]{4})(([0-9]{2})([0][13456789]|[1][012])([0][1-9]|[12][\d]|[3][0])|([0-9]{2})([0][13578]|[1][02])([0][1-9]|[12][\d]|[3][01])|([02468][048]|[13579][26])([0][2])([0][1-9]|[12][\d])|([1-9]{2})([0][2])([0][1-9]|[12][0-8]))((\w{2})([A|a|0-9]{1})){0,3}$
(assert (not (str.in_re X (re.union (re.++ ((_ re.loop 3 3) (re.union (re.range "A" "Z") (str.to_re "|") (re.range "a" "z") (str.to_re "&"))) (re.union (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "4") (str.to_re "5") (str.to_re "6") (str.to_re "7") (str.to_re "8") (str.to_re "9"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2")))) (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (str.to_re "30"))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "2")))) (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1"))))) (re.++ (re.union (re.++ (re.union (str.to_re "0") (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6")))) (str.to_re "02") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")))) (re.++ ((_ re.loop 2 2) (re.range "1" "9")) (str.to_re "02") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "8"))))) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) ((_ re.loop 1 1) (re.union (str.to_re "A") (str.to_re "|") (str.to_re "a") (re.range "0" "9")))) (re.++ ((_ re.loop 4 4) (re.union (re.range "A" "Z") (str.to_re "|") (re.range "a" "z"))) (re.union (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "4") (str.to_re "5") (str.to_re "6") (str.to_re "7") (str.to_re "8") (str.to_re "9"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2")))) (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (str.to_re "30"))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "2")))) (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1"))))) (re.++ (re.union (re.++ (re.union (str.to_re "0") (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6")))) (str.to_re "02") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")))) (re.++ ((_ re.loop 2 2) (re.range "1" "9")) (str.to_re "02") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "8"))))) ((_ re.loop 0 3) (re.++ ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) ((_ re.loop 1 1) (re.union (str.to_re "A") (str.to_re "|") (str.to_re "a") (re.range "0" "9"))))) (str.to_re "\u{a}"))))))
; \x7D\x7BTrojan\x3A\w+by\d+toetbuviaebe\x2feqv\.bvvuplink\x2Eco\x2Ekrwv=Host\x3A
(assert (str.in_re X (re.++ (str.to_re "}{Trojan:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "by") (re.+ (re.range "0" "9")) (str.to_re "toetbuviaebe/eqv.bvvuplink.co.krwv=Host:\u{a}"))))
; com\dsearch\x2econduit\x2ecom\s+User-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "com") (re.range "0" "9") (str.to_re "search.conduit.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:\u{a}")))))
; /^ver\x3aGhost\s+version\s+\d+\x2E\d+\s+server/smi
(assert (str.in_re X (re.++ (str.to_re "/ver:Ghost") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "version") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.+ (re.range "0" "9")) (str.to_re ".") (re.+ (re.range "0" "9")) (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "server/smi\u{a}"))))
(check-sat)

(exit)
