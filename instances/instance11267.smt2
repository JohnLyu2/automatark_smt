(declare-const X String)
; ^([(]?[+]{1}[0-9]{1,3}[)]?[ .\-]?)?[(]?[0-9]{3}[)]?[ .\-]?([0-9]{3}[ .\-]?[0-9]{4}|[a-zA-Z0-9]{7})([ .\-]?[/]{1}[ .\-]?[0-9]{2,4})?$
(assert (not (str.in_re X (re.++ (re.opt (re.++ (re.opt (str.to_re "(")) ((_ re.loop 1 1) (str.to_re "+")) ((_ re.loop 1 3) (re.range "0" "9")) (re.opt (str.to_re ")")) (re.opt (re.union (str.to_re " ") (str.to_re ".") (str.to_re "-"))))) (re.opt (str.to_re "(")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to_re ")")) (re.opt (re.union (str.to_re " ") (str.to_re ".") (str.to_re "-"))) (re.union (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re ".") (str.to_re "-"))) ((_ re.loop 4 4) (re.range "0" "9"))) ((_ re.loop 7 7) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")))) (re.opt (re.++ (re.opt (re.union (str.to_re " ") (str.to_re ".") (str.to_re "-"))) ((_ re.loop 1 1) (str.to_re "/")) (re.opt (re.union (str.to_re " ") (str.to_re ".") (str.to_re "-"))) ((_ re.loop 2 4) (re.range "0" "9")))) (str.to_re "\u{a}")))))
; ^((\(?0\d{4}\)?\s?\d{3}\s?\d{3})|(\(?0\d{3}\)?\s?\d{3}\s?\d{4})|(\(?0\d{2}\)?\s?\d{4}\s?\d{4}))(\s?\#(\d{4}|\d{3}))?$
(assert (str.in_re X (re.++ (re.union (re.++ (re.opt (str.to_re "(")) (str.to_re "0") ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to_re ")")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (re.opt (str.to_re "(")) (str.to_re "0") ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to_re ")")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (re.opt (str.to_re "(")) (str.to_re "0") ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to_re ")")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 4 4) (re.range "0" "9")))) (re.opt (re.++ (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "#") (re.union ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 3 3) (re.range "0" "9"))))) (str.to_re "\u{a}"))))
; TPSystemHost\x3a\x7D\x7BUser\x3AAlert\x2Fcgi-bin\x2FX-Mailer\x3A
(assert (str.in_re X (str.to_re "TPSystemHost:}{User:Alert/cgi-bin/X-Mailer:\u{13}\u{a}")))
; Hours\w+User-Agent\x3AChildWebGuardian
(assert (not (str.in_re X (re.++ (str.to_re "Hours") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "User-Agent:ChildWebGuardian\u{a}")))))
(check-sat)

(exit)
