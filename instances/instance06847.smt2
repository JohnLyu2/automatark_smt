(declare-const X String)
; Porta\s+SSKC\s+\.cfgmPOPrtCUSTOMPalToolbarUser-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "Porta") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "SSKC") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ".cfgmPOPrtCUSTOMPalToolbarUser-Agent:\u{a}")))))
; media\x2Etop-banners\x2Ecom
(assert (not (str.in_re X (str.to_re "media.top-banners.com\u{a}"))))
(check-sat)
