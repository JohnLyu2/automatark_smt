(declare-const X String)
; ^([0-2]{0,1})([0-3]{1})(\.[0-9]{1,2})?$|^([0-1]{0,1})([0-9]{1})(\.[0-9]{1,2})?$|^-?(24)(\.[0]{1,2})?$|^([0-9]{1})(\.[0-9]{1,2})?$
(assert (str.in_re X (re.union (re.++ (re.opt (re.range "0" "2")) ((_ re.loop 1 1) (re.range "0" "3")) (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9"))))) (re.++ (re.opt (re.range "0" "1")) ((_ re.loop 1 1) (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9"))))) (re.++ (re.opt (str.to_re "-")) (str.to_re "24") (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 2) (str.to_re "0"))))) (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to_re "\u{a}")))))
; www\.iggsey\.com\sX-Mailer\x3aComputeron\x3Acom\x3E2\x2E41
(assert (str.in_re X (re.++ (str.to_re "www.iggsey.com") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "X-Mailer:\u{13}Computeron:com>2.41\u{a}"))))
; <a [a-zA-Z0-9 ="'.:;?]*href=*[a-zA-Z0-9 ="'.:;>?]*[^>]*>([a-zA-Z0-9 ="'.:;>?]*[^<]*<)\s*/a\s*>
(assert (str.in_re X (re.++ (str.to_re "<a ") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re " ") (str.to_re "=") (str.to_re "\u{22}") (str.to_re "'") (str.to_re ".") (str.to_re ":") (str.to_re ";") (str.to_re "?"))) (str.to_re "href") (re.* (str.to_re "=")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re " ") (str.to_re "=") (str.to_re "\u{22}") (str.to_re "'") (str.to_re ".") (str.to_re ":") (str.to_re ";") (str.to_re ">") (str.to_re "?"))) (re.* (re.comp (str.to_re ">"))) (str.to_re ">") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/a") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ">\u{a}") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re " ") (str.to_re "=") (str.to_re "\u{22}") (str.to_re "'") (str.to_re ".") (str.to_re ":") (str.to_re ";") (str.to_re ">") (str.to_re "?"))) (re.* (re.comp (str.to_re "<"))) (str.to_re "<"))))
; ('.*$|Rem((\t| ).*$|$)|"(.|"")*?")
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "'") (re.* re.allchar)) (re.++ (str.to_re "Rem") (re.union (str.to_re "\u{9}") (str.to_re " ")) (re.* re.allchar)) (re.++ (str.to_re "\u{22}") (re.* (re.union re.allchar (str.to_re "\u{22}\u{22}"))) (str.to_re "\u{22}"))) (str.to_re "\u{a}"))))
(check-sat)
