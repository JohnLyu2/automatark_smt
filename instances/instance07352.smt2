(declare-const X String)
; ^[\d]{4}[-\s]{1}[\d]{3}[-\s]{1}[\d]{4}$
(assert (str.in_re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}"))))
; /\/m1\.exe$/U
(assert (not (str.in_re X (str.to_re "//m1.exe/U\u{a}"))))
; action\x2EIP-FTPsearch\.dropspam\.com
(assert (str.in_re X (str.to_re "action.IP-FTPsearch.dropspam.com\u{a}")))
(check-sat)

(exit)
