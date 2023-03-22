(declare-const X String)
; /^("(\\"|[^"])*"|'(\\'|[^'])*'|[^\n])*(\n|$)/gm
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.* (re.union (re.++ (str.to_re "\u{22}") (re.* (re.union (str.to_re "\u{5c}\u{22}") (re.comp (str.to_re "\u{22}")))) (str.to_re "\u{22}")) (re.++ (str.to_re "'") (re.* (re.union (str.to_re "\u{5c}'") (re.comp (str.to_re "'")))) (str.to_re "'")) (re.comp (str.to_re "\u{a}")))) (str.to_re "\u{a}/gm\u{a}")))))
; upgrade\x2Eqsrch\x2Einfo.*report.*Host\x3A.*Host\x3Akwd-i%3fUser-Agent\x3Awww\x2eproventactics\x2ecom
(assert (str.in_re X (re.++ (str.to_re "upgrade.qsrch.info") (re.* re.allchar) (str.to_re "report") (re.* re.allchar) (str.to_re "Host:") (re.* re.allchar) (str.to_re "Host:kwd-i%3fUser-Agent:www.proventactics.com\u{a}"))))
(check-sat)
