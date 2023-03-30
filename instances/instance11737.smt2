(declare-const X String)
; /\x2emov([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.mov") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; /mmlocate[^\x00]*?([\x3b\x7c\x26\x60]|\x24\x28)/
(assert (not (str.in_re X (re.++ (str.to_re "/mmlocate") (re.* (re.comp (str.to_re "\u{0}"))) (re.union (str.to_re "$(") (str.to_re ";") (str.to_re "|") (str.to_re "&") (str.to_re "`")) (str.to_re "/\u{a}")))))
; IDENTIFY.*\/cgi-bin\/PopupV.*Host\x3Asearchreslt
(assert (str.in_re X (re.++ (str.to_re "IDENTIFY") (re.* re.allchar) (str.to_re "/cgi-bin/PopupV") (re.* re.allchar) (str.to_re "Host:searchreslt\u{a}"))))
(check-sat)

(exit)
