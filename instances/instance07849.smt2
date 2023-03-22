(declare-const X String)
; /filename=[^\n]*\x2esvg/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".svg/i\u{a}"))))
; www\x2Emirarsearch\x2Ecom
(assert (str.in_re X (str.to_re "www.mirarsearch.com\u{a}")))
; about\d+yxegtd\x2fefcwgHost\x3ATPSystemwww\x2Ee-finder\x2Ecc
(assert (str.in_re X (re.++ (str.to_re "about") (re.+ (re.range "0" "9")) (str.to_re "yxegtd/efcwgHost:TPSystemwww.e-finder.cc\u{a}"))))
; ^(05)[0-9]{8}$
(assert (not (str.in_re X (re.++ (str.to_re "05") ((_ re.loop 8 8) (re.range "0" "9")) (str.to_re "\u{a}")))))
; /\x2ecis([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.cis") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
(check-sat)
