(declare-const X String)
; /\x2exlw([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.xlw") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; jquery\-(\d|\.)*\.min\.js
(assert (str.in_re X (re.++ (str.to_re "jquery-") (re.* (re.union (re.range "0" "9") (str.to_re "."))) (str.to_re ".min.js\u{a}"))))
; /\x2em4r([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.m4r") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; /filename=[^\n]*\x2esum/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".sum/i\u{a}"))))
(check-sat)
