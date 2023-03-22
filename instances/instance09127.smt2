(declare-const X String)
; /filename=[^\n]*\x2ejpf/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".jpf/i\u{a}"))))
; /\x2ette([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.tte") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; ^\<(\w){1,}\>(.){0,}([\</]|[\<])(\w){1,}\>$
(assert (not (str.in_re X (re.++ (str.to_re "<") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re ">") (re.* re.allchar) (re.union (str.to_re "<") (str.to_re "/")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re ">\u{a}")))))
; /\x2eexe([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.exe") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; www\x2Epurityscan\x2Ecom.*
(assert (str.in_re X (re.++ (str.to_re "www.purityscan.com") (re.* re.allchar) (str.to_re "\u{a}"))))
(check-sat)
