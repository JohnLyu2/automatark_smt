(declare-const X String)
; /filename=[\x22\x27]?[^\n]*\x2egni[\x22\x27\s]/si
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.opt (re.union (str.to_re "\u{22}") (str.to_re "'"))) (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".gni") (re.union (str.to_re "\u{22}") (str.to_re "'") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "/si\u{a}")))))
; \.cfg.*spyblini\x2Eini[^\n\r]*urfiqileuq\x2ftjzu.*Host\x3A666password\x3B1\x3BOptixGmbHPG=SPEEDBARcuReferer\x3A
(assert (not (str.in_re X (re.++ (str.to_re ".cfg") (re.* re.allchar) (str.to_re "spyblini.ini") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "urfiqileuq/tjzu") (re.* re.allchar) (str.to_re "Host:666password;1;OptixGmbHPG=SPEEDBARcuReferer:\u{a}")))))
(check-sat)

(exit)
