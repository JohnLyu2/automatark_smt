(declare-const X String)
; \.cfg.*spyblini\x2Eini[^\n\r]*urfiqileuq\x2ftjzu.*Host\x3A666password\x3B1\x3BOptixGmbHPG=SPEEDBARcuReferer\x3A
(assert (not (str.in_re X (re.++ (str.to_re ".cfg") (re.* re.allchar) (str.to_re "spyblini.ini") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "urfiqileuq/tjzu") (re.* re.allchar) (str.to_re "Host:666password;1;OptixGmbHPG=SPEEDBARcuReferer:\u{a}")))))
; aohobygi\x2fzwiwHost\x3a\x7D\x7Crichfind\x2Ecom
(assert (not (str.in_re X (str.to_re "aohobygi/zwiwHost:}|richfind.com\u{a}"))))
(check-sat)

(exit)
