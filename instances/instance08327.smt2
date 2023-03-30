(declare-const X String)
; pjpoptwql\x2frlnjsportsHost\x3ASubject\x3aYAHOOdestroyed\x21
(assert (str.in_re X (str.to_re "pjpoptwql/rlnjsportsHost:Subject:YAHOOdestroyed!\u{a}")))
; \x22reaction\x2Etxt\x22User-Agent\x3AnewsSpyAgentsmrtshpr-cs-
(assert (str.in_re X (str.to_re "\u{22}reaction.txt\u{22}User-Agent:newsSpyAgentsmrtshpr-cs-\u{13}\u{a}")))
; ContactHost\x3aHost\x3AFloodedFictionalUser-Agent\x3AHost\x3a
(assert (not (str.in_re X (str.to_re "ContactHost:Host:FloodedFictionalUser-Agent:Host:\u{a}"))))
; ^(\$|R\$|\-\$|\-R\$|\$\-|R\$\-|-)?([0-9]{1}[0-9]{0,2}(\.[0-9]{3})*(\,[0-9]{0,2})?|[1-9]{1}[0-9]{0,}(\,[0-9]{0,2})?|0(\,[0-9]{0,2})?|(\,[0-9]{1,2})?)$
(assert (not (str.in_re X (re.++ (re.opt (re.union (str.to_re "$") (str.to_re "R$") (str.to_re "-$") (str.to_re "-R$") (str.to_re "$-") (str.to_re "R$-") (str.to_re "-"))) (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 0 2) (re.range "0" "9")) (re.* (re.++ (str.to_re ".") ((_ re.loop 3 3) (re.range "0" "9")))) (re.opt (re.++ (str.to_re ",") ((_ re.loop 0 2) (re.range "0" "9"))))) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) (re.* (re.range "0" "9")) (re.opt (re.++ (str.to_re ",") ((_ re.loop 0 2) (re.range "0" "9"))))) (re.++ (str.to_re "0") (re.opt (re.++ (str.to_re ",") ((_ re.loop 0 2) (re.range "0" "9"))))) (re.opt (re.++ (str.to_re ",") ((_ re.loop 1 2) (re.range "0" "9"))))) (str.to_re "\u{a}")))))
; c\.goclick\.com\s+URLBlaze\s+Host\x3A
(assert (str.in_re X (re.++ (str.to_re "c.goclick.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "URLBlaze") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:\u{a}"))))
(check-sat)

(exit)
