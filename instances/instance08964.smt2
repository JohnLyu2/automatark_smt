(declare-const X String)
; messages.*Windows.*From\x3AX-Mailer\x3a+\x2Fcbn\x2FearchSchwindler
(assert (str.in_re X (re.++ (str.to_re "messages") (re.* re.allchar) (str.to_re "Windows") (re.* re.allchar) (str.to_re "From:X-Mailer") (re.+ (str.to_re ":")) (str.to_re "/cbn/earchSchwindler\u{a}"))))
; <a[a-zA-Z0-9 ="'.:;?]*(name=){1}[a-zA-Z0-9 ="'.:;?]*\s*((/>)|(>[a-zA-Z0-9 ="'<>.:;?]*</a>))
(assert (not (str.in_re X (re.++ (str.to_re "<a") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re " ") (str.to_re "=") (str.to_re "\u{22}") (str.to_re "'") (str.to_re ".") (str.to_re ":") (str.to_re ";") (str.to_re "?"))) ((_ re.loop 1 1) (str.to_re "name=")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re " ") (str.to_re "=") (str.to_re "\u{22}") (str.to_re "'") (str.to_re ".") (str.to_re ":") (str.to_re ";") (str.to_re "?"))) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re "/>") (re.++ (str.to_re ">") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re " ") (str.to_re "=") (str.to_re "\u{22}") (str.to_re "'") (str.to_re "<") (str.to_re ">") (str.to_re ".") (str.to_re ":") (str.to_re ";") (str.to_re "?"))) (str.to_re "</a>"))) (str.to_re "\u{a}")))))
(check-sat)

(exit)
