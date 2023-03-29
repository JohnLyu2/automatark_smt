(declare-const X String)
; /^\/[a-z0-9]+\/access\.log$/Ui
(assert (str.in_re X (re.++ (str.to_re "//") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "/access.log/Ui\u{a}"))))
; /\x2ejs\x3f[a-zA-Z0-9]{9,20}=Mozilla\x2f/UGi
(assert (not (str.in_re X (re.++ (str.to_re "/.js?") ((_ re.loop 9 20) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "=Mozilla//UGi\u{a}")))))
; Subject\x3AHost\x3aHost\x3A000Filelogin_ok\x5EMiniCommand
(assert (str.in_re X (str.to_re "Subject:Host:Host:000Filelogin_ok^MiniCommand\u{a}")))
; /filename=[^\n]*\x2exul/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".xul/i\u{a}")))))
(check-sat)

(exit)
