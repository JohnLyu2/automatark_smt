(declare-const X String)
; OS\x2F\d+User-Agent\x3AUser-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "OS/") (re.+ (re.range "0" "9")) (str.to_re "User-Agent:User-Agent:\u{a}")))))
; /filename=[^\n]*\x2ejpx/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".jpx/i\u{a}")))))
; Monitor\s+Supervisor\s+User-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "Monitor") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Supervisor") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:\u{a}")))))
(check-sat)

(exit)
