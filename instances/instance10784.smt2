(declare-const X String)
; /\x2eskm([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.skm") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; \x2Ftoolbar\x2Fsupremetb\s+wjpropqmlpohj\x2flo\s+resultsmaster\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "/toolbar/supremetb") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "wjpropqmlpohj/lo") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "resultsmaster.com\u{13}\u{a}")))))
; ookflolfctm\x2fnmot\.fmu
(assert (str.in_re X (str.to_re "ookflolfctm/nmot.fmu\u{a}")))
; ^\.{0,2}[\/\\]
(assert (str.in_re X (re.++ ((_ re.loop 0 2) (str.to_re ".")) (re.union (str.to_re "/") (str.to_re "\u{5c}")) (str.to_re "\u{a}"))))
(check-sat)

(exit)
