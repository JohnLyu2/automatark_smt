(declare-const X String)
; /filename=[^\n]*\x2exslt/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".xslt/i\u{a}"))))
; /\x2eaif[cf]?([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.aif") (re.opt (re.union (str.to_re "c") (str.to_re "f"))) (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; /\x2eets([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.ets") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
(check-sat)

(exit)
