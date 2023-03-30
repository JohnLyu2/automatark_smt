(declare-const X String)
; /filename=[^\n]*\x2eogg/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".ogg/i\u{a}")))))
; ^(0|(([1-9]{1}|[1-9]{1}[0-9]{1}|[1-9]{1}[0-9]{2}){1}(\ [0-9]{3}){0,})),(([0-9]{2})|\-\-)([\ ]{1})(€|EUR|EURO){1}$
(assert (str.in_re X (re.++ (re.union (str.to_re "0") (re.++ ((_ re.loop 1 1) (re.union ((_ re.loop 1 1) (re.range "1" "9")) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 2 2) (re.range "0" "9"))))) (re.* (re.++ (str.to_re " ") ((_ re.loop 3 3) (re.range "0" "9")))))) (str.to_re ",") (re.union ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "--")) ((_ re.loop 1 1) (str.to_re " ")) ((_ re.loop 1 1) (re.union (str.to_re "\u{20ac}") (str.to_re "EUR") (str.to_re "EURO"))) (str.to_re "\u{a}"))))
; /filename=[^\n]*\x2excf/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".xcf/i\u{a}"))))
; (^(30)[0-5]\d{11}$)|(^(36)\d{12}$)|(^(38[0-8])\d{11}$)
(assert (str.in_re X (re.union (re.++ (str.to_re "30") (re.range "0" "5") ((_ re.loop 11 11) (re.range "0" "9"))) (re.++ (str.to_re "36") ((_ re.loop 12 12) (re.range "0" "9"))) (re.++ (str.to_re "\u{a}") ((_ re.loop 11 11) (re.range "0" "9")) (str.to_re "38") (re.range "0" "8")))))
(check-sat)

(exit)
