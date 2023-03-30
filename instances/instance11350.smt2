(declare-const X String)
; /\x2eogx([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.ogx") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; www.*tool\x2Eworld2\x2Ecn
(assert (str.in_re X (re.++ (str.to_re "www") (re.* re.allchar) (str.to_re "tool.world2.cn\u{13}\u{a}"))))
; ^\d{1,5}(\.\d{1,2})?$
(assert (str.in_re X (re.++ ((_ re.loop 1 5) (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to_re "\u{a}"))))
; Subject\x3a\s+BossUser-Agent\x3ASpediaUser-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "Subject:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "BossUser-Agent:SpediaUser-Agent:\u{a}")))))
(check-sat)

(exit)
