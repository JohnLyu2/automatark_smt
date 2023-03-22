(declare-const X String)
; [a-zA-Z][a-zA-Z0-9_\-\,\.]{5,31}
(assert (not (str.in_re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) ((_ re.loop 5 31) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "_") (str.to_re "-") (str.to_re ",") (str.to_re "."))) (str.to_re "\u{a}")))))
; www\x2Esearchexpert\x2Ecom\d+Referer\x3Adatcouponbar\.coupons\.com
(assert (not (str.in_re X (re.++ (str.to_re "www.searchexpert.com") (re.+ (re.range "0" "9")) (str.to_re "Referer:datcouponbar.coupons.com\u{a}")))))
; /filename=[^\n]*\x2emppl/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mppl/i\u{a}"))))
; ^(([01][0-9]|[012][0-3]):([0-5][0-9]))*$
(assert (str.in_re X (re.++ (re.* (re.++ (re.union (re.++ (re.union (str.to_re "0") (str.to_re "1")) (re.range "0" "9")) (re.++ (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2")) (re.range "0" "3"))) (str.to_re ":") (re.range "0" "5") (re.range "0" "9"))) (str.to_re "\u{a}"))))
; \x2Ftoolbar\x2F\d+www\x2Ericercadoppia\x2EcomPALTALKSubject\x3A
(assert (not (str.in_re X (re.++ (str.to_re "/toolbar/") (re.+ (re.range "0" "9")) (str.to_re "www.ricercadoppia.comPALTALKSubject:\u{a}")))))
(check-sat)
