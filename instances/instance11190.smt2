(declare-const X String)
; ^(([$])?((([0-9]{1,3},)+[0-9]{3})|[0-9]+)(\.[0-9]{2})?)$
(assert (str.in_re X (re.++ (str.to_re "\u{a}") (re.opt (str.to_re "$")) (re.union (re.++ (re.+ (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ","))) ((_ re.loop 3 3) (re.range "0" "9"))) (re.+ (re.range "0" "9"))) (re.opt (re.++ (str.to_re ".") ((_ re.loop 2 2) (re.range "0" "9")))))))
; /\x2Esum([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.sum") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; \(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\)
(assert (str.in_re X (re.++ (str.to_re "(") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ")\u{a}"))))
; /filename=[^\n]*\x2ebcl/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".bcl/i\u{a}")))))
; YOURHost\x3Awww\x2Ealfacleaner\x2Ecom
(assert (str.in_re X (str.to_re "YOURHost:www.alfacleaner.com\u{a}")))
(check-sat)
