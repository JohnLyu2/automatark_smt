(declare-const X String)
; dat\s+resultsmaster\x2Ecom.*Host\x3a.*SpyAgentRootHost\x3AAdToolsSubject\x3Ae2give\.com
(assert (not (str.in_re X (re.++ (str.to_re "dat") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "resultsmaster.com\u{13}") (re.* re.allchar) (str.to_re "Host:") (re.* re.allchar) (str.to_re "SpyAgentRootHost:AdToolsSubject:e2give.com\u{a}")))))
; upgrade\x2Eqsrch\x2Einfo.*report.*Host\x3A.*Host\x3Akwd-i%3fUser-Agent\x3Awww\x2eproventactics\x2ecom
(assert (str.in_re X (re.++ (str.to_re "upgrade.qsrch.info") (re.* re.allchar) (str.to_re "report") (re.* re.allchar) (str.to_re "Host:") (re.* re.allchar) (str.to_re "Host:kwd-i%3fUser-Agent:www.proventactics.com\u{a}"))))
; ^(\+[1-9][0-9]*(\([0-9]*\)|-[0-9]*-))?[0]?[1-9][0-9\- ]*$
(assert (str.in_re X (re.++ (re.opt (re.++ (str.to_re "+") (re.range "1" "9") (re.* (re.range "0" "9")) (re.union (re.++ (str.to_re "(") (re.* (re.range "0" "9")) (str.to_re ")")) (re.++ (str.to_re "-") (re.* (re.range "0" "9")) (str.to_re "-"))))) (re.opt (str.to_re "0")) (re.range "1" "9") (re.* (re.union (re.range "0" "9") (str.to_re "-") (str.to_re " "))) (str.to_re "\u{a}"))))
; \x2Ftoolbar\x2Fsupremetb\s+wjpropqmlpohj\x2flo\s+resultsmaster\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "/toolbar/supremetb") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "wjpropqmlpohj/lo") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "resultsmaster.com\u{13}\u{a}"))))
(check-sat)
