(declare-const X String)
; (Mo(n(day)?)?|Tu(e(sday)?)?|We(d(nesday)?)?|Th(u(rsday)?)?|Fr(i(day)?)?|Sa(t(urday)?)?|Su(n(day)?)?)
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re "Mo") (re.opt (re.++ (str.to_re "n") (re.opt (str.to_re "day"))))) (re.++ (str.to_re "Tu") (re.opt (re.++ (str.to_re "e") (re.opt (str.to_re "sday"))))) (re.++ (str.to_re "We") (re.opt (re.++ (str.to_re "d") (re.opt (str.to_re "nesday"))))) (re.++ (str.to_re "Th") (re.opt (re.++ (str.to_re "u") (re.opt (str.to_re "rsday"))))) (re.++ (str.to_re "Fr") (re.opt (re.++ (str.to_re "i") (re.opt (str.to_re "day"))))) (re.++ (str.to_re "Sa") (re.opt (re.++ (str.to_re "t") (re.opt (str.to_re "urday"))))) (re.++ (str.to_re "Su") (re.opt (re.++ (str.to_re "n") (re.opt (str.to_re "day")))))) (str.to_re "\u{a}")))))
(check-sat)

(exit)
