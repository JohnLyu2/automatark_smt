(declare-const X String)
; data\.warezclient\.comoakmanympnw\x2flnkd\.pkHost\x3AScaner
(assert (not (str.in_re X (str.to_re "data.warezclient.comoakmanympnw/lnkd.pkHost:Scaner\u{a}"))))
; ^([a-zA-Z0-9]{6,18}?)$
(assert (not (str.in_re X (re.++ ((_ re.loop 6 18) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "\u{a}")))))
; ['`~!@#&$%^&*()-_=+{}|?><,.:;{}\"\\/\\[\\]]
(assert (str.in_re X (re.++ (re.union (str.to_re "'") (str.to_re "`") (str.to_re "~") (str.to_re "!") (str.to_re "@") (str.to_re "#") (str.to_re "&") (str.to_re "$") (str.to_re "%") (str.to_re "^") (str.to_re "*") (str.to_re "(") (re.range ")" "_") (str.to_re "=") (str.to_re "+") (str.to_re "{") (str.to_re "}") (str.to_re "|") (str.to_re "?") (str.to_re ">") (str.to_re "<") (str.to_re ",") (str.to_re ".") (str.to_re ":") (str.to_re ";") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "/") (str.to_re "[")) (str.to_re "]\u{a}"))))
(check-sat)

(exit)
