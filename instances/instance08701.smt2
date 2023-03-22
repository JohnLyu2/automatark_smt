(declare-const X String)
; Toolbar\d+ServerLiteToolbardailywww\x2Ecameup\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "Toolbar") (re.+ (re.range "0" "9")) (str.to_re "ServerLiteToolbardailywww.cameup.com\u{13}\u{a}")))))
; ^(01)[0-9]{8}
(assert (str.in_re X (re.++ (str.to_re "01") ((_ re.loop 8 8) (re.range "0" "9")) (str.to_re "\u{a}"))))
; /filename=[^\n]*\x2eses/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".ses/i\u{a}"))))
(check-sat)
