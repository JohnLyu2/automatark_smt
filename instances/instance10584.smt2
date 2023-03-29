(declare-const X String)
; (FR-?)?[0-9A-Z]{2}\ ?[0-9]{9}
(assert (not (str.in_re X (re.++ (re.opt (re.++ (str.to_re "FR") (re.opt (str.to_re "-")))) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "Z"))) (re.opt (str.to_re " ")) ((_ re.loop 9 9) (re.range "0" "9")) (str.to_re "\u{a}")))))
; /^[-+]?((\d*|((\d{1,3})?,(\d{3},)*(\d{3})))?)(\.\d*)?([eE][-+]\d+)?$/
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.opt (re.union (re.* (re.range "0" "9")) (re.++ (re.opt ((_ re.loop 1 3) (re.range "0" "9"))) (str.to_re ",") (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ","))) ((_ re.loop 3 3) (re.range "0" "9"))))) (re.opt (re.++ (str.to_re ".") (re.* (re.range "0" "9")))) (re.opt (re.++ (re.union (str.to_re "e") (str.to_re "E")) (re.union (str.to_re "-") (str.to_re "+")) (re.+ (re.range "0" "9")))) (str.to_re "/\u{a}")))))
; 100013Agentsvr\x5E\x5EMerlinIPBeta\s\x3E\x3C
(assert (str.in_re X (re.++ (str.to_re "100013Agentsvr^^Merlin\u{13}IPBeta") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "><\u{a}"))))
; clvompycem\x2fcen\.vcnHost\x3AUser-Agent\x3A\x0d\x0a
(assert (not (str.in_re X (str.to_re "clvompycem/cen.vcnHost:User-Agent:\u{d}\u{a}\u{a}"))))
(check-sat)

(exit)
