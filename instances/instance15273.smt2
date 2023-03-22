(declare-const X String)
; /\x2epfa([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.pfa") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; /filename=[^\n]*\x2e3gp/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".3gp/i\u{a}")))))
; DISK\s+\x2Fcgi\x2Flogurl\.cgiSubject\x3AinsertX-Mailer\x3A
(assert (str.in_re X (re.++ (str.to_re "DISK") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/cgi/logurl.cgiSubject:insertX-Mailer:\u{13}\u{a}"))))
; /filename=[^\n]*\x2ejpx/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".jpx/i\u{a}"))))
; (\d{5})[\.\-\+ ]?(\d{4})?
(assert (str.in_re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (re.union (str.to_re ".") (str.to_re "-") (str.to_re "+") (str.to_re " "))) (re.opt ((_ re.loop 4 4) (re.range "0" "9"))) (str.to_re "\u{a}"))))
(check-sat)
