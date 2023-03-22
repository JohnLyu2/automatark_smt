(declare-const X String)
; YAHOODesktopHost\x3aLOGHost\x3AtvshowticketsResultsFROM\x3A
(assert (str.in_re X (str.to_re "YAHOODesktopHost:LOGHost:tvshowticketsResultsFROM:\u{a}")))
; /^\/\d{2,4}\.xap$/U
(assert (not (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 2 4) (re.range "0" "9")) (str.to_re ".xap/U\u{a}")))))
; /filename=[^\n]*\x2edoc/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".doc/i\u{a}"))))
; /\/setup_b\.asp\?prj=\d\x26pid=[^\r\n]*\x26mac=/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//setup_b.asp?prj=") (re.range "0" "9") (str.to_re "&pid=") (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "&mac=/Ui\u{a}")))))
(check-sat)
