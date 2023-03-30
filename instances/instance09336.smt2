(declare-const X String)
; ^\d{3}-\d{7}[0-6]{1}$
(assert (str.in_re X (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 7 7) (re.range "0" "9")) ((_ re.loop 1 1) (re.range "0" "6")) (str.to_re "\u{a}"))))
; User-Agent\x3A\s+Host\x3Acdpnode=FILESIZE\x3Etoolsbar\x2Ekuaiso\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:cdpnode=FILESIZE>\u{13}toolsbar.kuaiso.com\u{a}")))))
(check-sat)

(exit)
