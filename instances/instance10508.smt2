(declare-const X String)
; /\x2eclass([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.class") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; NSIS_DOWNLOAD.*User-Agent\x3A\s+gpstool\x2eglobaladserver\x2ecom
(assert (str.in_re X (re.++ (str.to_re "NSIS_DOWNLOAD") (re.* re.allchar) (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "gpstool.globaladserver.com\u{a}"))))
; User-Agent\x3A\s+BossUser-Agent\x3ASpediaUser-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "BossUser-Agent:SpediaUser-Agent:\u{a}")))))
; ^[\-]{0,1}[0-9]{1,}(([\.\,]{0,1}[0-9]{1,})|([0-9]{0,}))$
(assert (str.in_re X (re.++ (re.opt (str.to_re "-")) (re.+ (re.range "0" "9")) (re.union (re.++ (re.opt (re.union (str.to_re ".") (str.to_re ","))) (re.+ (re.range "0" "9"))) (re.* (re.range "0" "9"))) (str.to_re "\u{a}"))))
(check-sat)
