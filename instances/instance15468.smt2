(declare-const X String)
; /i=[a-zA-Z0-9$~]{40}/U
(assert (str.in_re X (re.++ (str.to_re "/i=") ((_ re.loop 40 40) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "$") (str.to_re "~"))) (str.to_re "/U\u{a}"))))
; /filename=[^\n]*\x2ef4v/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".f4v/i\u{a}"))))
; /tip\x3D[a-zA-Z]+\x26cli\x3D[a-zA-Z]+\x26tipo\x3Dcli\x26inf\x3D/smiP
(assert (not (str.in_re X (re.++ (str.to_re "/tip=") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "&cli=") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "&tipo=cli&inf=/smiP\u{a}")))))
; /IPHONE\d+.\d/sH
(assert (not (str.in_re X (re.++ (str.to_re "/IPHONE") (re.+ (re.range "0" "9")) re.allchar (re.range "0" "9") (str.to_re "/sH\u{a}")))))
; /^\x2f[a-z0-9]{51}$/Ui
(assert (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 51 51) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "/Ui\u{a}"))))
(check-sat)

(exit)
