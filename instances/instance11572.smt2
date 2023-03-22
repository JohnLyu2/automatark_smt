(declare-const X String)
; /filename=[^\n]*\x2emp3/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mp3/i\u{a}")))))
; /^GET \x2F3010[0-9A-F]{166}00000001/
(assert (not (str.in_re X (re.++ (str.to_re "/GET /3010") ((_ re.loop 166 166) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to_re "00000001/\u{a}")))))
(check-sat)
