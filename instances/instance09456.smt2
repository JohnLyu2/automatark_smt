(declare-const X String)
; \d{2}\s?[A-Z]{1,3}\s?\d{2,4}
(assert (not (str.in_re X (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 1 3) (re.range "A" "Z")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 2 4) (re.range "0" "9")) (str.to_re "\u{a}")))))
; Subject\x3aPorta\x2Fasp\x2Foffers\.asp\?\x2Fiis2ebs\.aspwww\x2Esmileycentral\x2Ecom
(assert (not (str.in_re X (str.to_re "Subject:Porta/asp/offers.asp?/iis2ebs.aspwww.smileycentral.com\u{a}"))))
; ^[A-Z]\d{2}(\.\d){0,1}$
(assert (str.in_re X (re.++ (re.range "A" "Z") ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") (re.range "0" "9"))) (str.to_re "\u{a}"))))
(check-sat)
