(declare-const X String)
; /filename=[^\n]*\x2ert/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".rt/i\u{a}"))))
; /filename=[^\n]*\x2ehtc/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".htc/i\u{a}")))))
; encoder\s%3fsearchresltX-Mailer\x3A
(assert (str.in_re X (re.++ (str.to_re "encoder") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "%3fsearchresltX-Mailer:\u{13}\u{a}"))))
; www\x2Esogou\x2Ecom\s+HWAE\+The\+password\+is\x3A
(assert (str.in_re X (re.++ (str.to_re "www.sogou.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "HWAE+The+password+is:\u{a}"))))
(check-sat)
