(declare-const X String)
; ^(0|1)+$
(assert (not (str.in_re X (re.++ (re.+ (re.union (str.to_re "0") (str.to_re "1"))) (str.to_re "\u{a}")))))
; thereHost\x3Aselect\x2FGetwww\x2e2-seek\x2ecom\x2fsearch
(assert (not (str.in_re X (str.to_re "thereHost:select/Getwww.2-seek.com/search\u{a}"))))
; /filename=[^\n]*\x2ewri/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wri/i\u{a}")))))
; PASSW=\s+\x2Fta\x2FNEWS\x2F.*loomcompany\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "PASSW=") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/ta/NEWS/") (re.* re.allchar) (str.to_re "loomcompany.com\u{a}"))))
(check-sat)

(exit)
