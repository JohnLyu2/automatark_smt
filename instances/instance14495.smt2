(declare-const X String)
; Subject\x3AAlexaOnline\x2521\x2521\x2521
(assert (not (str.in_re X (str.to_re "Subject:AlexaOnline%21%21%21\u{a}"))))
; ^
(assert (not (str.in_re X (str.to_re "\u{a}"))))
; (^(\+?\-? *[0-9]+)([,0-9 ]*)([0-9 ])*$)|(^ *$)
(assert (str.in_re X (re.union (re.++ (re.* (re.union (str.to_re ",") (re.range "0" "9") (str.to_re " "))) (re.* (re.union (re.range "0" "9") (str.to_re " "))) (re.opt (str.to_re "+")) (re.opt (str.to_re "-")) (re.* (str.to_re " ")) (re.+ (re.range "0" "9"))) (re.++ (re.* (str.to_re " ")) (str.to_re "\u{a}")))))
(check-sat)
