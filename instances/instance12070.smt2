(declare-const X String)
; Handyst=ClassStopperHost\x3ASpamBlockerUtility
(assert (str.in_re X (str.to_re "Handyst=ClassStopperHost:SpamBlockerUtility\u{a}")))
; /\x2f\x24\{\x23[^\x2f{}]+?\}(\.action)?\x2f?$/miU
(assert (not (str.in_re X (re.++ (str.to_re "//${#") (re.+ (re.union (str.to_re "/") (str.to_re "{") (str.to_re "}"))) (str.to_re "}") (re.opt (str.to_re ".action")) (re.opt (str.to_re "/")) (str.to_re "/miU\u{a}")))))
; Host\x3a[^\n\r]*snprtz\x7Cdialno\s+Agent\s+Host\x3AUser-Agent\x3A\.cfgUser-Agent\x3Axbqyosoe\x2fcpvm
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "snprtz|dialno") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Agent") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:User-Agent:.cfgUser-Agent:xbqyosoe/cpvm\u{a}"))))
; ^([A-Z]|[a-z]|[0-9])(([A-Z])*(([a-z])*([0-9])*(%)*(&)*(')*(\+)*(-)*(@)*(_)*(\.)*)|(\ )[^  ])+$
(assert (not (str.in_re X (re.++ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9")) (re.+ (re.union (re.++ (re.* (re.range "A" "Z")) (re.* (re.range "a" "z")) (re.* (re.range "0" "9")) (re.* (str.to_re "%")) (re.* (str.to_re "&")) (re.* (str.to_re "'")) (re.* (str.to_re "+")) (re.* (str.to_re "-")) (re.* (str.to_re "@")) (re.* (str.to_re "_")) (re.* (str.to_re "."))) (re.++ (str.to_re " ") (re.comp (str.to_re " "))))) (str.to_re "\u{a}")))))
(check-sat)

(exit)
