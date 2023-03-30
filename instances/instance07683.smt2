(declare-const X String)
; ^\d{5}$|^\d{5}-\d{4}$
(assert (str.in_re X (re.union ((_ re.loop 5 5) (re.range "0" "9")) (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}")))))
; ^(0|(([1-9]{1}|[1-9]{1}[0-9]{1}|[1-9]{1}[0-9]{2}){1}(\ [0-9]{3}){0,})),(([0-9]{2})|\-\-)([\ ]{1})(€|EUR|EURO){1}$
(assert (not (str.in_re X (re.++ (re.union (str.to_re "0") (re.++ ((_ re.loop 1 1) (re.union ((_ re.loop 1 1) (re.range "1" "9")) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 2 2) (re.range "0" "9"))))) (re.* (re.++ (str.to_re " ") ((_ re.loop 3 3) (re.range "0" "9")))))) (str.to_re ",") (re.union ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "--")) ((_ re.loop 1 1) (str.to_re " ")) ((_ re.loop 1 1) (re.union (str.to_re "\u{20ac}") (str.to_re "EUR") (str.to_re "EURO"))) (str.to_re "\u{a}")))))
; /\x2ewvx([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.wvx") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; /(\x17\x00|\x00\x5C)\x00w\x00u\x00a\x00e\x00x\x00t\x00\.\x00d\x00l\x00l\x00\x00\x00/i
(assert (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "\u{17}\u{0}") (str.to_re "\u{0}\u{5c}")) (str.to_re "\u{0}w\u{0}u\u{0}a\u{0}e\u{0}x\u{0}t\u{0}.\u{0}d\u{0}l\u{0}l\u{0}\u{0}\u{0}/i\u{a}"))))
; (([1-9]|[0][1-9])|1[012])[- /.](([1-9]|[0][1-9])|[12][0-9]|3[01])[- /.](19|20)\d\d
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2"))) (re.range "1" "9") (re.++ (str.to_re "0") (re.range "1" "9"))) (re.union (str.to_re "-") (str.to_re " ") (str.to_re "/") (str.to_re ".")) (re.union (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1"))) (re.range "1" "9") (re.++ (str.to_re "0") (re.range "1" "9"))) (re.union (str.to_re "-") (str.to_re " ") (str.to_re "/") (str.to_re ".")) (re.union (str.to_re "19") (str.to_re "20")) (re.range "0" "9") (re.range "0" "9") (str.to_re "\u{a}"))))
(check-sat)

(exit)
