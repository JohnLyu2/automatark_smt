(declare-const X String)
; ^(^(([0-9A-F]{1,4}(((:[0-9A-F]{1,4}){5}::[0-9A-F]{1,4})|((:[0-9A-F]{1,4}){4}::[0-9A-F]{1,4}(:[0-9A-F]{1,4}){0,1})|((:[0-9A-F]{1,4}){3}::[0-9A-F]{1,4}(:[0-9A-F]{1,4}){0,2})|((:[0-9A-F]{1,4}){2}::[0-9A-F]{1,4}(:[0-9A-F]{1,4}){0,3})|(:[0-9A-F]{1,4}::[0-9A-F]{1,4}(:[0-9A-F]{1,4}){0,4})|(::[0-9A-F]{1,4}(:[0-9A-F]{1,4}){0,5})|(:[0-9A-F]{1,4}){7}))$|^(::[0-9A-F]{1,4}(:[0-9A-F]{1,4}){0,6})$)|^::$)|^((([0-9A-F]{1,4}(((:[0-9A-F]{1,4}){3}::([0-9A-F]{1,4}){1})|((:[0-9A-F]{1,4}){2}::[0-9A-F]{1,4}(:[0-9A-F]{1,4}){0,1})|((:[0-9A-F]{1,4}){1}::[0-9A-F]{1,4}(:[0-9A-F]{1,4}){0,2})|(::[0-9A-F]{1,4}(:[0-9A-F]{1,4}){0,3})|((:[0-9A-F]{1,4}){0,5})))|([:]{2}[0-9A-F]{1,4}(:[0-9A-F]{1,4}){0,4})):|::)((25[0-5]|2[0-4][0-9]|[0-1]?[0-9]{0,2})\.){3}(25[0-5]|2[0-4][0-9]|[0-1]?[0-9]{0,2})$$
(assert (not (str.in_re X (re.union (re.++ (re.union (re.++ (re.union (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F"))) (re.union (re.++ ((_ re.loop 3 3) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F"))))) (str.to_re "::") ((_ re.loop 1 1) ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F"))))) (re.++ ((_ re.loop 2 2) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F"))))) (str.to_re "::") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F"))) (re.opt (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F")))))) (re.++ ((_ re.loop 1 1) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F"))))) (str.to_re "::") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F"))) ((_ re.loop 0 2) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F")))))) (re.++ (str.to_re "::") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F"))) ((_ re.loop 0 3) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F")))))) ((_ re.loop 0 5) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F"))))))) (re.++ ((_ re.loop 2 2) (str.to_re ":")) ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F"))) ((_ re.loop 0 4) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F"))))))) (str.to_re ":")) (str.to_re "::")) ((_ re.loop 3 3) (re.++ (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (re.opt (re.range "0" "1")) ((_ re.loop 0 2) (re.range "0" "9")))) (str.to_re "."))) (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (re.opt (re.range "0" "1")) ((_ re.loop 0 2) (re.range "0" "9")))) (str.to_re "\u{a}")) (str.to_re "::") (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F"))) (re.union (re.++ ((_ re.loop 5 5) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F"))))) (str.to_re "::") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F")))) (re.++ ((_ re.loop 4 4) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F"))))) (str.to_re "::") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F"))) (re.opt (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F")))))) (re.++ ((_ re.loop 3 3) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F"))))) (str.to_re "::") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F"))) ((_ re.loop 0 2) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F")))))) (re.++ ((_ re.loop 2 2) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F"))))) (str.to_re "::") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F"))) ((_ re.loop 0 3) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F")))))) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to_re "::") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F"))) ((_ re.loop 0 4) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F")))))) (re.++ (str.to_re "::") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F"))) ((_ re.loop 0 5) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F")))))) ((_ re.loop 7 7) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F"))))))) (re.++ (str.to_re "::") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F"))) ((_ re.loop 0 6) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F"))))))))))
; (^\d{2}\.\d{3}\.\d{3}\/\d{4}\-\d{2}$)
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "/") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 2 2) (re.range "0" "9"))))))
; xpsp2-\s+spyblpat.*is\x2EphpBarFrom\x3A
(assert (str.in_re X (re.++ (str.to_re "xpsp2-") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "spyblpat") (re.* re.allchar) (str.to_re "is.phpBarFrom:\u{a}"))))
(check-sat)

(exit)
