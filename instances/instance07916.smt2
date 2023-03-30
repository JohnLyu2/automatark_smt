(declare-const X String)
; /filename=[^\n]*\x2es3m/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".s3m/i\u{a}"))))
; ("[^"]*")|('[^\r]*)(\r\n)?
(assert (str.in_re X (re.union (re.++ (str.to_re "\u{22}") (re.* (re.comp (str.to_re "\u{22}"))) (str.to_re "\u{22}")) (re.++ (re.opt (str.to_re "\u{d}\u{a}")) (str.to_re "\u{a}'") (re.* (re.comp (str.to_re "\u{d}")))))))
; [^A-Za-z0-9]
(assert (str.in_re X (re.++ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9")) (str.to_re "\u{a}"))))
; SecureNet\sHost\x3AX-Mailer\x3Aas\x2Estarware\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "SecureNet") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Host:X-Mailer:\u{13}as.starware.com\u{a}")))))
(check-sat)

(exit)
