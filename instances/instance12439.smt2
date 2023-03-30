(declare-const X String)
; www\.trackhits\.cc\s+wwwHost\x3aRobertVersionspyblini\x2Eini
(assert (str.in_re X (re.++ (str.to_re "www.trackhits.cc") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "wwwHost:RobertVersionspyblini.ini\u{a}"))))
; ^(\S+\.{1})(\S+\.{1})*([^\s\.]+\s*)$
(assert (str.in_re X (re.++ (re.* (re.++ (re.+ (re.comp (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))) ((_ re.loop 1 1) (str.to_re ".")))) (str.to_re "\u{a}") (re.+ (re.comp (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))) ((_ re.loop 1 1) (str.to_re ".")) (re.+ (re.union (str.to_re ".") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))))
; User-Agent\x3ASurveillancecomOnline
(assert (not (str.in_re X (str.to_re "User-Agent:Surveillance\u{13}comOnline\u{a}"))))
; /\x2eair([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.air") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
(check-sat)

(exit)
