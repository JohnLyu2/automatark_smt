(declare-const X String)
; Host\x3AuploadServer3AdapupdEFErrorSubject\x3a
(assert (str.in_re X (str.to_re "Host:uploadServer3AdapupdEFErrorSubject:\u{a}")))
; ^(\d{1,4}?[.]{0,1}?\d{0,3}?)$
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") ((_ re.loop 1 4) (re.range "0" "9")) (re.opt (str.to_re ".")) ((_ re.loop 0 3) (re.range "0" "9"))))))
; (\w(\s)?)+
(assert (str.in_re X (re.++ (re.+ (re.++ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))) (str.to_re "\u{a}"))))
; Host\x3A\s+\x2Ftoolbar\x2Fico\x2F\dencoderserverreport\<\x2Ftitle\>
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/toolbar/ico/") (re.range "0" "9") (str.to_re "encoderserverreport</title>\u{a}"))))
(check-sat)
