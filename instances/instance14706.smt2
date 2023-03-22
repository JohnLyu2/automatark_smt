(declare-const X String)
; /filename=[^\n]*\x2eavi/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".avi/i\u{a}")))))
; /^\/[a-f0-9]{32}\/\d{10}\/[a-f0-9]{32}\.jar$/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "/") ((_ re.loop 10 10) (re.range "0" "9")) (str.to_re "/") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re ".jar/Ui\u{a}")))))
; \x2Fbonzibuddy\x2Forigin\x3DsidefindApofisUser-Agent\x3A
(assert (not (str.in_re X (str.to_re "/bonzibuddy/origin=sidefindApofisUser-Agent:\u{a}"))))
(check-sat)
