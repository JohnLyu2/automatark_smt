(declare-const X String)
; /filename=[^\n]*\x2ebcl/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".bcl/i\u{a}"))))
; Searchdata2\.activshopper\.comdll\x3FproductsCUSTOMSAccwww\x2Elocators\x2Ecom
(assert (not (str.in_re X (str.to_re "Searchdata2.activshopper.comdll?productsCUSTOMSAccwww.locators.com\u{a}"))))
; engineResultUser-Agent\x3A
(assert (str.in_re X (str.to_re "engineResultUser-Agent:\u{a}")))
(check-sat)

(exit)
