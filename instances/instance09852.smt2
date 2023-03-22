(declare-const X String)
; /filename=[^\n]*\x2ecpe/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".cpe/i\u{a}"))))
; (^\d{1,2}\.\d{1,2}\.\d{4})|(^\d{1,2}\.\d{1,2})|(^\d{1,2})$
(assert (not (str.in_re X (re.union (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (str.to_re "\u{a}"))))))
; snprtz\x7Cdialno\s+3Awww\x2eurlblaze\x2enetulmxct\x2fmqoyc
(assert (not (str.in_re X (re.++ (str.to_re "snprtz|dialno") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "3Awww.urlblaze.netulmxct/mqoyc\u{a}")))))
(check-sat)
