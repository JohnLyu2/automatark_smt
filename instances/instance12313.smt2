(declare-const X String)
; YWRtaW46cGFzc3dvcmQ[^\n\r]*DA[^\n\r]*Host\x3Awww\x2Ee-finder\x2Ecc
(assert (str.in_re X (re.++ (str.to_re "YWRtaW46cGFzc3dvcmQ") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "DA") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Host:www.e-finder.cc\u{a}"))))
; /filename=[^\n]*\x2escr/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".scr/i\u{a}"))))
; Host\x3a[^\n\r]*A-311\s+lnzzlnbk\x2fpkrm\.finSubject\x3aBasic
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "A-311") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "lnzzlnbk/pkrm.finSubject:Basic\u{a}"))))
; Host\x3A\d+UI2.*areprotocolhttp\x3A\x2F\x2Fwww\.searchinweb\.com\x2Fsearch\.php\?said=bar
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "UI2") (re.* re.allchar) (str.to_re "areprotocolhttp://www.searchinweb.com/search.php?said=bar\u{a}")))))
(check-sat)

(exit)
