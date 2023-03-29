(declare-const X String)
; /\x2Fmrow\x5Fpin\x2F\x3Fid\d+[a-z]{5,}\d{5}\x26rnd\x3D\d+/smi
(assert (not (str.in_re X (re.++ (str.to_re "//mrow_pin/?id") (re.+ (re.range "0" "9")) ((_ re.loop 5 5) (re.range "0" "9")) (str.to_re "&rnd=") (re.+ (re.range "0" "9")) (str.to_re "/smi\u{a}") ((_ re.loop 5 5) (re.range "a" "z")) (re.* (re.range "a" "z"))))))
; /filename=[^\n]*\x2eswf/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".swf/i\u{a}"))))
; ((PL|SK)-?)?[0-9]{10}
(assert (not (str.in_re X (re.++ (re.opt (re.++ (re.union (str.to_re "PL") (str.to_re "SK")) (re.opt (str.to_re "-")))) ((_ re.loop 10 10) (re.range "0" "9")) (str.to_re "\u{a}")))))
; DISK\s+\x2Fcgi\x2Flogurl\.cgiSubject\x3AinsertX-Mailer\x3A
(assert (str.in_re X (re.++ (str.to_re "DISK") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/cgi/logurl.cgiSubject:insertX-Mailer:\u{13}\u{a}"))))
; ^[a-zA-Z]{1}[-][0-9]{7}[-][a-zA-Z]{1}$
(assert (not (str.in_re X (re.++ ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "-") ((_ re.loop 7 7) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "\u{a}")))))
(check-sat)

(exit)
