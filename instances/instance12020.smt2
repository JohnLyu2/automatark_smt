(declare-const X String)
; Host\x3aSoftwareHost\x3AjokeWEBCAM-Server\x3a
(assert (str.in_re X (str.to_re "Host:SoftwareHost:jokeWEBCAM-Server:\u{a}")))
; ^[A-Za-z]{2}[ ]{0,1}[0-9]{2}[ ]{0,1}[a-zA-Z]{3}$
(assert (not (str.in_re X (re.++ ((_ re.loop 2 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.opt (str.to_re " ")) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to_re " ")) ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "\u{a}")))))
; /\x00hide hide\x22\x09\x22([a-z0-9\x5c\x2e\x3a]+\x2eexe|sh)/
(assert (str.in_re X (re.++ (str.to_re "/\u{0}hide hide\u{22}\u{9}\u{22}") (re.union (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "\u{5c}") (str.to_re ".") (str.to_re ":"))) (str.to_re ".exe")) (str.to_re "sh")) (str.to_re "/\u{a}"))))
(check-sat)

(exit)
