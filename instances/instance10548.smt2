(declare-const X String)
; User-Agent\x3AMailerGuarded
(assert (not (str.in_re X (str.to_re "User-Agent:MailerGuarded\u{a}"))))
; (^(\+?\-? *[0-9]+)([,0-9 ]*)([0-9 ])*$)|(^ *$)
(assert (not (str.in_re X (re.union (re.++ (re.* (re.union (str.to_re ",") (re.range "0" "9") (str.to_re " "))) (re.* (re.union (re.range "0" "9") (str.to_re " "))) (re.opt (str.to_re "+")) (re.opt (str.to_re "-")) (re.* (str.to_re " ")) (re.+ (re.range "0" "9"))) (re.++ (re.* (str.to_re " ")) (str.to_re "\u{a}"))))))
; ^(19|20)[0-9]{2}-((01|03|05|07|08|10|12)-(0[1-9]|[12][0-9]|3[01]))|(02-(0[1-9]|[12][0-9]))|((04|06|09|11)-(0[1-9]|[12][0-9]|30))$
(assert (not (str.in_re X (re.union (re.++ (re.union (str.to_re "19") (str.to_re "20")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "-") (re.union (str.to_re "01") (str.to_re "03") (str.to_re "05") (str.to_re "07") (str.to_re "08") (str.to_re "10") (str.to_re "12")) (str.to_re "-") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1"))))) (re.++ (str.to_re "02-") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")))) (re.++ (str.to_re "\u{a}") (re.union (str.to_re "04") (str.to_re "06") (str.to_re "09") (str.to_re "11")) (str.to_re "-") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (str.to_re "30")))))))
(check-sat)

(exit)
