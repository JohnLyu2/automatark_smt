(declare-const X String)
; ^(((20)((0[0-9])|(1[0-1])))|(([1][^0-8])?\d{2}))((0[1-9])|1[0-2])((0[1-9])|(2[0-9])|(3[01]))[-]?\d{4}$
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re "20") (re.union (re.++ (str.to_re "0") (re.range "0" "9")) (re.++ (str.to_re "1") (re.range "0" "1")))) (re.++ (re.opt (re.++ (str.to_re "1") (re.range "0" "8"))) ((_ re.loop 2 2) (re.range "0" "9")))) (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1")))) (re.opt (str.to_re "-")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}")))))
; User-Agent\x3A\s+community\d+
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "community") (re.+ (re.range "0" "9")) (str.to_re "\u{a}"))))
; ((http(s)?:\/\/)?[a-z0-9-]{3,}(\.[a-z0-9-]{2,})+(:[0-9]+)?((\/[^\/\s.]+\.[^\/\s.,!]+)|(\/[^\/\s.,!]*))*)
(assert (str.in_re X (re.++ (str.to_re "\u{a}") (re.opt (re.++ (str.to_re "http") (re.opt (str.to_re "s")) (str.to_re "://"))) (re.+ (re.++ (str.to_re ".") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-"))) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-"))))) (re.opt (re.++ (str.to_re ":") (re.+ (re.range "0" "9")))) (re.* (re.union (re.++ (str.to_re "/") (re.+ (re.union (str.to_re "/") (str.to_re ".") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ".") (re.+ (re.union (str.to_re "/") (str.to_re ".") (str.to_re ",") (str.to_re "!") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))) (re.++ (str.to_re "/") (re.* (re.union (str.to_re "/") (str.to_re ".") (str.to_re ",") (str.to_re "!") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))))) ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-"))) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-"))))))
(check-sat)

(exit)
