(declare-const X String)
; IP.*encoder\d+SAHPORT-User-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "IP") (re.* re.allchar) (str.to_re "encoder") (re.+ (re.range "0" "9")) (str.to_re "SAHPORT-User-Agent:\u{a}")))))
; \x28BDLL\x29Googledll\x3F
(assert (not (str.in_re X (str.to_re "(BDLL)\u{13}Googledll?\u{a}"))))
; (\<!--\s*.*?((--\>)|$))
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}<!--") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* re.allchar) (str.to_re "-->")))))
; Host\x3A1\-extreme\x2EbizX-Mailer\x3awww\x2Ewebcruiser\x2Ecc
(assert (not (str.in_re X (str.to_re "Host:1-extreme.bizX-Mailer:\u{13}www.webcruiser.cc\u{a}"))))
(check-sat)
