(declare-const X String)
; /\xb6\xb6\xff\xff\xff\xff$/
(assert (not (str.in_re X (str.to_re "/\u{b6}\u{b6}\u{ff}\u{ff}\u{ff}\u{ff}/\u{a}"))))
; SSKCstech\x2Eweb-nexus\x2Enet
(assert (str.in_re X (str.to_re "SSKCstech.web-nexus.net\u{a}")))
; /filename=[^\n]*\x2eaddin/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".addin/i\u{a}"))))
; (^[+]?\d*\.?\d*[1-9]+\d*$)|(^[+]?[1-9]+\d*\.\d*$)
(assert (not (str.in_re X (re.union (re.++ (re.opt (str.to_re "+")) (re.* (re.range "0" "9")) (re.opt (str.to_re ".")) (re.* (re.range "0" "9")) (re.+ (re.range "1" "9")) (re.* (re.range "0" "9"))) (re.++ (str.to_re "\u{a}") (re.opt (str.to_re "+")) (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")) (str.to_re ".") (re.* (re.range "0" "9")))))))
(check-sat)

(exit)
