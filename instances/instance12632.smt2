(declare-const X String)
; Shell\x2FFileage\x7D\x7BPort\x3Aupd\x2Elop\x2Ecom
(assert (not (str.in_re X (str.to_re "Shell/Fileage}{Port:upd.lop.com\u{a}"))))
; /^\d+O\d+\.jsp\?[a-z0-9\x3d\x2b\x2f]{20}/iR
(assert (str.in_re X (re.++ (str.to_re "/") (re.+ (re.range "0" "9")) (str.to_re "O") (re.+ (re.range "0" "9")) (str.to_re ".jsp?") ((_ re.loop 20 20) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "=") (str.to_re "+") (str.to_re "/"))) (str.to_re "/iR\u{a}"))))
; /\/home\/index.asp\?typeid\=[0-9]{1,3}/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//home/index") re.allchar (str.to_re "asp?typeid=") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re "/Ui\u{a}")))))
; ((<body)|(<BODY))([^>]*)>
(assert (str.in_re X (re.++ (re.union (str.to_re "<body") (str.to_re "<BODY")) (re.* (re.comp (str.to_re ">"))) (str.to_re ">\u{a}"))))
(check-sat)
