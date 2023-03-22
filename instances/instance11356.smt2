(declare-const X String)
; /filename=[^\n]*\x2empg/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mpg/i\u{a}"))))
; /\x2F[a-z]+\x2epng/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//") (re.+ (re.range "a" "z")) (str.to_re ".png/Ui\u{a}")))))
; ^([1-9]|1[0-2])$
(assert (not (str.in_re X (re.++ (re.union (re.range "1" "9") (re.++ (str.to_re "1") (re.range "0" "2"))) (str.to_re "\u{a}")))))
; Subject\x3aFTPdistdcww\x2Edmcast\x2Ecom
(assert (not (str.in_re X (str.to_re "Subject:FTPdistdcww.dmcast.com\u{a}"))))
(check-sat)
