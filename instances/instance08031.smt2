(declare-const X String)
; /\x2f\?[0-9a-f]{60,66}[\x3b\d]*$/U
(assert (not (str.in_re X (re.++ (str.to_re "//?") ((_ re.loop 60 66) (re.union (re.range "0" "9") (re.range "a" "f"))) (re.* (re.union (str.to_re ";") (re.range "0" "9"))) (str.to_re "/U\u{a}")))))
; config\x2E180solutions\x2Ecom\dStableWeb-MailUser-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "config.180solutions.com") (re.range "0" "9") (str.to_re "StableWeb-MailUser-Agent:\u{a}")))))
; /filename=[^\n]*\x2eeps/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".eps/i\u{a}"))))
(check-sat)

(exit)
