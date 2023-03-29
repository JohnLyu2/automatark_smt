(declare-const X String)
; /nsrjb[^\x00]*?([\x3b\x7c\x26\x60]|\x24\x28)/
(assert (str.in_re X (re.++ (str.to_re "/nsrjb") (re.* (re.comp (str.to_re "\u{0}"))) (re.union (str.to_re "$(") (str.to_re ";") (str.to_re "|") (str.to_re "&") (str.to_re "`")) (str.to_re "/\u{a}"))))
; (\[url=?"?)([^\]"]*)("?\])([^\[]*)(\[/url\])
(assert (str.in_re X (re.++ (re.* (re.union (str.to_re "]") (str.to_re "\u{22}"))) (re.* (re.comp (str.to_re "["))) (str.to_re "[/url]\u{a}[url") (re.opt (str.to_re "=")) (re.opt (str.to_re "\u{22}")) (re.opt (str.to_re "\u{22}")) (str.to_re "]"))))
; /filename=[^\n]*\x2ejnlp/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".jnlp/i\u{a}")))))
; ^([a-zA-Z])*$
(assert (not (str.in_re X (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "\u{a}")))))
; freeIPaddrsRunner\+The\+password\+is\x3A
(assert (not (str.in_re X (str.to_re "freeIPaddrsRunner+The+password+is:\u{a}"))))
(check-sat)

(exit)
