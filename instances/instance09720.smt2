(declare-const X String)
; ^(([0-2]*[0-9]+[0-9]+)\.([0-2]*[0-9]+[0-9]+)\.([0-2]*[0-9]+[0-9]+)\.([0-2]*[0-9]+[0-9]+))$
(assert (str.in_re X (re.++ (str.to_re "\u{a}...") (re.* (re.range "0" "2")) (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9")) (re.* (re.range "0" "2")) (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9")) (re.* (re.range "0" "2")) (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9")) (re.* (re.range "0" "2")) (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9")))))
; User-Agent\x3A.*Host\x3A.*w3whowww\x2Esogou\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "Host:") (re.* re.allchar) (str.to_re "w3whowww.sogou.com\u{a}"))))
; \x3Cchat\x3EHost\x3Atid\x3D\x7B
(assert (not (str.in_re X (str.to_re "<chat>\u{1b}Host:tid={\u{a}"))))
; Last.*?(\d+.?\d*)
(assert (not (str.in_re X (re.++ (str.to_re "Last") (re.* re.allchar) (str.to_re "\u{a}") (re.+ (re.range "0" "9")) (re.opt re.allchar) (re.* (re.range "0" "9"))))))
(check-sat)
