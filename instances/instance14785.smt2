(declare-const X String)
; Searchdata2\.activshopper\.comdll\x3FproductsCUSTOMSAccwww\x2Elocators\x2Ecom
(assert (str.in_re X (str.to_re "Searchdata2.activshopper.comdll?productsCUSTOMSAccwww.locators.com\u{a}")))
; Host\x3A\s+\.ico\s+Host\x3Aorigin\x3Dsidefind
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ".ico") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:origin=sidefind\u{a}"))))
; (SE-?)?[0-9]{12}
(assert (str.in_re X (re.++ (re.opt (re.++ (str.to_re "SE") (re.opt (str.to_re "-")))) ((_ re.loop 12 12) (re.range "0" "9")) (str.to_re "\u{a}"))))
; /^User\x2DAgent\x3A\s*Mozilla\x0d?$/smiH
(assert (str.in_re X (re.++ (str.to_re "/User-Agent:") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Mozilla") (re.opt (str.to_re "\u{d}")) (str.to_re "/smiH\u{a}"))))
; /\?spl=\d&br=[^&]+&vers=[^&]+&s=/H
(assert (not (str.in_re X (re.++ (str.to_re "/?spl=") (re.range "0" "9") (str.to_re "&br=") (re.+ (re.comp (str.to_re "&"))) (str.to_re "&vers=") (re.+ (re.comp (str.to_re "&"))) (str.to_re "&s=/H\u{a}")))))
(check-sat)
