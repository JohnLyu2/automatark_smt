(declare-const X String)
; M\x2Ezip\d+dll\x3F\s+CodeguruBrowserwww\x2Esogou\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "M.zip") (re.+ (re.range "0" "9")) (str.to_re "dll?") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "CodeguruBrowserwww.sogou.com\u{a}")))))
(check-sat)
