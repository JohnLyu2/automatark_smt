(declare-const X String)
; ^(0|(([1-9]{1}|[1-9]{1}[0-9]{1}|[1-9]{1}[0-9]{2}){1}(\ [0-9]{3}){0,})),(([0-9]{2})|\-\-)([\ ]{1})(€|EUR|EURO){1}$
(assert (not (str.in_re X (re.++ (re.union (str.to_re "0") (re.++ ((_ re.loop 1 1) (re.union ((_ re.loop 1 1) (re.range "1" "9")) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 2 2) (re.range "0" "9"))))) (re.* (re.++ (str.to_re " ") ((_ re.loop 3 3) (re.range "0" "9")))))) (str.to_re ",") (re.union ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "--")) ((_ re.loop 1 1) (str.to_re " ")) ((_ re.loop 1 1) (re.union (str.to_re "\u{20ac}") (str.to_re "EUR") (str.to_re "EURO"))) (str.to_re "\u{a}")))))
(check-sat)

(exit)
