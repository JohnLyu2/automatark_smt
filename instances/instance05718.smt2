(declare-const X String)
; /mminfo[^\x00]*?([\x3b\x7c\x26\x60]|\x24\x28)/
(assert (str.in_re X (re.++ (str.to_re "/mminfo") (re.* (re.comp (str.to_re "\u{0}"))) (re.union (str.to_re "$(") (str.to_re ";") (str.to_re "|") (str.to_re "&") (str.to_re "`")) (str.to_re "/\u{a}"))))
(check-sat)

(exit)
