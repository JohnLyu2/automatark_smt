(declare-const X String)
; \x5Chome\/lordofsearchToolbar\x22StarLogger\x22
(assert (str.in_re X (str.to_re "\u{5c}home/lordofsearchToolbar\u{22}StarLogger\u{22}\u{a}")))
; \.?[a-zA-Z0-9]{1,}$
(assert (str.in_re X (re.++ (re.opt (str.to_re ".")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "\u{a}"))))
; ^[a-zA-Z]:(\\|(\\[^\\/\s:*"<>|]+)+)>
(assert (str.in_re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to_re ":") (re.union (str.to_re "\u{5c}") (re.+ (re.++ (str.to_re "\u{5c}") (re.+ (re.union (str.to_re "\u{5c}") (str.to_re "/") (str.to_re ":") (str.to_re "*") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))))) (str.to_re ">\u{a}"))))
; Host\x3ATest\x3C\x2Fchat\x3EResultsSubject\x3A
(assert (not (str.in_re X (str.to_re "Host:Test</chat>ResultsSubject:\u{a}"))))
; wlpgskmv\x2flwzo\.qv#www\x2Ekliksearch\x2Ecom
(assert (str.in_re X (str.to_re "wlpgskmv/lwzo.qv#www.kliksearch.com\u{a}")))
(check-sat)
