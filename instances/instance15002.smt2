(declare-const X String)
; Host\x3A\d+zmnjgmomgbdz\x2fzzmw\.gzt%3ftoolbar\x2Ei-lookup\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "zmnjgmomgbdz/zzmw.gzt%3ftoolbar.i-lookup.com\u{a}")))))
; ^[1-9]0?$
(assert (str.in_re X (re.++ (re.range "1" "9") (re.opt (str.to_re "0")) (str.to_re "\u{a}"))))
; encoder[^\n\r]*\.cfg\s+Host\x3AWeHost\x3a
(assert (not (str.in_re X (re.++ (str.to_re "encoder") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re ".cfg") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:WeHost:\u{a}")))))
; /filename=[^\n]*\x2emppl/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mppl/i\u{a}"))))
; ^\$((\d{1})\,\d{1,3}(\,\d{3}))|(\d{1,3}(\,\d{3}))|(\d{1,3})?$
(assert (not (str.in_re X (re.union (re.++ (str.to_re "$") ((_ re.loop 1 1) (re.range "0" "9")) (str.to_re ",") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (re.opt ((_ re.loop 1 3) (re.range "0" "9"))) (str.to_re "\u{a}"))))))
(check-sat)

(exit)
