(declare-const X String)
; /filename=[^\n]*\x2ewmv/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wmv/i\u{a}")))))
; ^http[s]?://([a-zA-Z0-9\-]+\.)*([a-zA-Z]{3,61}|[a-zA-Z]{1,}\.[a-zA-Z]{2})/.*$
(assert (str.in_re X (re.++ (str.to_re "http") (re.opt (str.to_re "s")) (str.to_re "://") (re.* (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-"))) (str.to_re "."))) (re.union ((_ re.loop 3 61) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re ".") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))))) (str.to_re "/") (re.* re.allchar) (str.to_re "\u{a}"))))
; httphost[^\n\r]*www\x2Emaxifiles\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "httphost") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "www.maxifiles.com\u{a}")))))
(check-sat)
