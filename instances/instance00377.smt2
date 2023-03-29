(declare-const X String)
; www.*tool\x2Eworld2\x2Ecn
(assert (not (str.in_re X (re.++ (str.to_re "www") (re.* re.allchar) (str.to_re "tool.world2.cn\u{13}\u{a}")))))
(check-sat)

(exit)
