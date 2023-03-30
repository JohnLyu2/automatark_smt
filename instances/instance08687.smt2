(declare-const X String)
; /\x2ejs\x3f[a-zA-Z0-9]{9,20}=Mozilla\x2f/UGi
(assert (str.in_re X (re.++ (str.to_re "/.js?") ((_ re.loop 9 20) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "=Mozilla//UGi\u{a}"))))
; Host\x3A.*Hello\x2E.*Referer\x3AToolbarCurrent\x3BCIA
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.* re.allchar) (str.to_re "Hello.") (re.* re.allchar) (str.to_re "Referer:ToolbarCurrent;CIA\u{a}")))))
; /filename=[^\n]*\x2evwr/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".vwr/i\u{a}")))))
(check-sat)

(exit)
