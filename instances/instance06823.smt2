(declare-const X String)
; Host\x3A\swww\x2Etopadwarereviews\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.topadwarereviews.com\u{a}"))))
; User-Agent\x3A.*Host\x3a\s+www\x2Ewordiq\x2Ecom\s+Subject\x3AAlexaOnline\x2521\x2521\x2521
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.wordiq.com\u{1b}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Subject:AlexaOnline%21%21%21\u{a}")))))
; Host\x3AuploadServer3AdapupdEFErrorSubject\x3a
(assert (not (str.in_re X (str.to_re "Host:uploadServer3AdapupdEFErrorSubject:\u{a}"))))
; Host\x3a\w+Pre\x2Fta\x2FNEWS\x2FKeyloggeradfsgecoiwnfhirmvtg\x2fggqh\.kqh
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Pre/ta/NEWS/Keyloggeradfsgecoiwnf\u{1b}hirmvtg/ggqh.kqh\u{1b}\u{a}"))))
; ^([1-9]\d{3}|0[1-9]\d{2}|00[1-9]\d{1}|000[1-9]{1})$
(assert (str.in_re X (re.++ (re.union (re.++ (re.range "1" "9") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to_re "0") (re.range "1" "9") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "00") (re.range "1" "9") ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ (str.to_re "000") ((_ re.loop 1 1) (re.range "1" "9")))) (str.to_re "\u{a}"))))
(check-sat)

(exit)
