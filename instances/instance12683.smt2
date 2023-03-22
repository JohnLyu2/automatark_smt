(declare-const X String)
; Host\x3A\swww\x2Etopadwarereviews\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.topadwarereviews.com\u{a}")))))
; User-Agent\x3A.*User-Agent\x3A.*spyblini\x2Einidata\.warezclient\.com
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "spyblini.inidata.warezclient.com\u{a}")))))
; /\/jovf\.html$/U
(assert (not (str.in_re X (str.to_re "//jovf.html/U\u{a}"))))
; Guarded\s+3A\s+data2\.activshopper\.comUser-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "Guarded") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "3A") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "data2.activshopper.comUser-Agent:\u{a}")))))
; ^[^<^>]*$
(assert (not (str.in_re X (re.++ (re.* (re.union (str.to_re "<") (str.to_re "^") (str.to_re ">"))) (str.to_re "\u{a}")))))
(check-sat)
