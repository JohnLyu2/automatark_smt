(declare-const X String)
; LIST\]SpamBlockerUtilityTry2FindBasicHost\x3AUser-Agent\x3AAcmeprotocolSpy
(assert (not (str.in_re X (str.to_re "LIST]SpamBlockerUtilityTry2FindBasicHost:User-Agent:AcmeprotocolSpy\u{a}"))))
; ^(\-)?\d*(\.\d+)?$
(assert (not (str.in_re X (re.++ (re.opt (str.to_re "-")) (re.* (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") (re.+ (re.range "0" "9")))) (str.to_re "\u{a}")))))
; Toolbar\dcount\x2Eyok\x2EcomweatherHost\x3AUser-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "Toolbar") (re.range "0" "9") (str.to_re "count.yok.comweatherHost:User-Agent:\u{a}"))))
(check-sat)
