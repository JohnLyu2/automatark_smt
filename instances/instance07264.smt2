(declare-const X String)
; Subject\x3a\s+BossUser-Agent\x3ASpediaUser-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "Subject:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "BossUser-Agent:SpediaUser-Agent:\u{a}")))))
; ProAgent\d+X-Mailer\x3Abacktrust\x2EcomReferer\x3aSupreme
(assert (str.in_re X (re.++ (str.to_re "ProAgent") (re.+ (re.range "0" "9")) (str.to_re "X-Mailer:\u{13}backtrust.comReferer:Supreme\u{a}"))))
; /nsrmm[^\x00]*?([\x3b\x7c\x26\x60]|\x24\x28)/
(assert (str.in_re X (re.++ (str.to_re "/nsrmm") (re.* (re.comp (str.to_re "\u{0}"))) (re.union (str.to_re "$(") (str.to_re ";") (str.to_re "|") (str.to_re "&") (str.to_re "`")) (str.to_re "/\u{a}"))))
; ^[ISBN]{4}[ ]{0,1}[0-9]{1}[-]{1}[0-9]{3}[-]{1}[0-9]{5}[-]{1}[0-9]{0,1}$
(assert (not (str.in_re X (re.++ ((_ re.loop 4 4) (re.union (str.to_re "I") (str.to_re "S") (str.to_re "B") (str.to_re "N"))) (re.opt (str.to_re " ")) ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 1 1) (str.to_re "-")) ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 1 1) (str.to_re "-")) ((_ re.loop 5 5) (re.range "0" "9")) ((_ re.loop 1 1) (str.to_re "-")) (re.opt (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)

(exit)
