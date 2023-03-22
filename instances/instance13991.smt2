(declare-const X String)
; \b(((\S+)?)(@|mailto\:|(news|(ht|f)tp(s?))\://)\S+)\b
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") (re.opt (re.+ (re.comp (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))) (re.union (str.to_re "@") (str.to_re "mailto:") (re.++ (re.union (str.to_re "news") (re.++ (re.union (str.to_re "ht") (str.to_re "f")) (str.to_re "tp") (re.opt (str.to_re "s")))) (str.to_re "://"))) (re.+ (re.comp (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))))))
; /filename=[^\n]*\x2ecrx/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".crx/i\u{a}")))))
; ^(([0]?[0-5][0-9]|[0-9]):([0-5][0-9]))$
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") (re.union (re.++ (re.opt (str.to_re "0")) (re.range "0" "5") (re.range "0" "9")) (re.range "0" "9")) (str.to_re ":") (re.range "0" "5") (re.range "0" "9")))))
; Host\x3a\x7D\x7BPort\x3Awww\x2Einstafinder\x2Ecom
(assert (not (str.in_re X (str.to_re "Host:}{Port:www.instafinder.com\u{a}"))))
; /\x2fType\x2fXRef\x2fW\x5b[^\x5d]*?\d{7,15}/smi
(assert (not (str.in_re X (re.++ (str.to_re "//Type/XRef/W[") (re.* (re.comp (str.to_re "]"))) ((_ re.loop 7 15) (re.range "0" "9")) (str.to_re "/smi\u{a}")))))
(check-sat)
