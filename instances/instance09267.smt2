(declare-const X String)
; ^([0-9][,]?)*([0-9][0-9])$
(assert (str.in_re X (re.++ (re.* (re.++ (re.range "0" "9") (re.opt (str.to_re ",")))) (str.to_re "\u{a}") (re.range "0" "9") (re.range "0" "9"))))
; ^([a-zA-Z0-9])+\\{1}([a-zA-Z0-9])+$
(assert (str.in_re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) ((_ re.loop 1 1) (str.to_re "\u{5c}")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "\u{a}"))))
; /\x2eavi([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.avi") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; /filename=[^\n]*\x2emkv/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mkv/i\u{a}")))))
; PortweatherX-Mailer\x3aUser-Agent\x3AToolbar
(assert (str.in_re X (str.to_re "PortweatherX-Mailer:\u{13}User-Agent:Toolbar\u{a}")))
(check-sat)

(exit)
