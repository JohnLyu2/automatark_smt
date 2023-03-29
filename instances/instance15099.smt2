(declare-const X String)
; TOOLBAR\s+dist\x2Eatlas\x2Dia\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "TOOLBAR") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "dist.atlas-ia.com\u{a}")))))
; IP-[^\n\r]*URL\d\x7croogoo\x7c\.cfgmPOPrtCUSTOMPalToolbar
(assert (str.in_re X (re.++ (str.to_re "IP-") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "URL") (re.range "0" "9") (str.to_re "|roogoo|.cfgmPOPrtCUSTOMPalToolbar\u{a}"))))
(check-sat)

(exit)
