(declare-const X String)
; /filename=[^\n]*\x2ewmv/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wmv/i\u{a}"))))
; User-Agent\x3AreadyHost\x3AHost\x3ASubject\x3Awininetproducts
(assert (str.in_re X (str.to_re "User-Agent:readyHost:Host:Subject:wininetproducts\u{a}")))
; Subject\x3Aas\x2Estarware\x2Ecom\x2Fdp\x2Fsearch\?x=
(assert (str.in_re X (str.to_re "Subject:as.starware.com/dp/search?x=\u{a}")))
; ProSpywww\x2Eemp3finder\x2Ecomwww
(assert (not (str.in_re X (str.to_re "ProSpywww.emp3finder.comwww\u{a}"))))
(check-sat)
