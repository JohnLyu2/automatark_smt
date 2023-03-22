(declare-const X String)
; Kontiki\s+resultsmaster\x2Ecom\x7croogoo\x7c
(assert (not (str.in_re X (re.++ (str.to_re "Kontiki") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "resultsmaster.com\u{13}|roogoo|\u{a}")))))
; ^((\d{0,1}[0-9](\.\d{0,1}[0-9])?)|(100))$
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.opt (re.range "0" "9")) (re.range "0" "9") (re.opt (re.++ (str.to_re ".") (re.opt (re.range "0" "9")) (re.range "0" "9")))) (str.to_re "100")) (str.to_re "\u{a}")))))
; ZC-BridgeHost\x3ASubject\x3aas\x2Estarware\x2Ecom
(assert (not (str.in_re X (str.to_re "ZC-BridgeHost:Subject:as.starware.com\u{a}"))))
; /\x253D$/Im
(assert (str.in_re X (str.to_re "/%3D/Im\u{a}")))
; User-Agent\x3A.*Host\x3a\s+www\x2Ewordiq\x2Ecom\s+Subject\x3AAlexaOnline\x2521\x2521\x2521
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.wordiq.com\u{1b}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Subject:AlexaOnline%21%21%21\u{a}")))))
(check-sat)
