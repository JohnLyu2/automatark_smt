(declare-const X String)
; User-Agent\x3A\d+moreKontikiHost\x3a
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "moreKontikiHost:\u{a}"))))
; /\x2eopus([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.opus") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; ^([0-1]?[0-9]|[2][0-3]):([0-5][0-9]):([0-5][0-9])$
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.opt (re.range "0" "1")) (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) (str.to_re "::\u{a}") (re.range "0" "5") (re.range "0" "9") (re.range "0" "5") (re.range "0" "9")))))
; www\.123mania\.com\x2F0409areZC-Bridge
(assert (str.in_re X (str.to_re "www.123mania.com/0409areZC-Bridge\u{a}")))
(check-sat)

(exit)
