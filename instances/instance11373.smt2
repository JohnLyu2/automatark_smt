(declare-const X String)
; /\/modules\/(n?\d|nu)\.swf$/U
(assert (not (str.in_re X (re.++ (str.to_re "//modules/") (re.union (re.++ (re.opt (str.to_re "n")) (re.range "0" "9")) (str.to_re "nu")) (str.to_re ".swf/U\u{a}")))))
; User-Agent\x3aHost\x3AHost\x3ASpyBuddy
(assert (not (str.in_re X (str.to_re "User-Agent:Host:Host:SpyBuddy\u{a}"))))
(check-sat)

(exit)
