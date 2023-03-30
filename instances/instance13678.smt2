(declare-const X String)
; ^([^:])+\\.([^:])+$
(assert (str.in_re X (re.++ (re.+ (re.comp (str.to_re ":"))) (str.to_re "\u{5c}") re.allchar (re.+ (re.comp (str.to_re ":"))) (str.to_re "\u{a}"))))
; Spy\s+\x0d\x0a.*YAHOOdestroyed\x21Host\x3a
(assert (not (str.in_re X (re.++ (str.to_re "Spy") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{d}\u{a}") (re.* re.allchar) (str.to_re "YAHOOdestroyed!Host:\u{a}")))))
; ^\d{0,2}(\.\d{1,2})?$
(assert (str.in_re X (re.++ ((_ re.loop 0 2) (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to_re "\u{a}"))))
; \x7D\x7BTrojan\x3Abacktrust\x2EcomHost\x3Apjpoptwql\x2frlnj
(assert (not (str.in_re X (str.to_re "}{Trojan:backtrust.comHost:pjpoptwql/rlnj\u{a}"))))
; vvvjkhmbgnbbw\x2fqbn\x28robert\x40blackcastlesoft\x2Ecom\x29
(assert (str.in_re X (str.to_re "vvvjkhmbgnbbw/qbn\u{1b}(robert@blackcastlesoft.com)\u{a}")))
(check-sat)

(exit)
