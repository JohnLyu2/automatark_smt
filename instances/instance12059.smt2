(declare-const X String)
; /filename=[^\n]*\x2ejif/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".jif/i\u{a}")))))
; Toolbar.*www\x2Ewebcruiser\x2Ecc\w+www\x2Etopadwarereviews\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "Toolbar") (re.* re.allchar) (str.to_re "www.webcruiser.cc") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "www.topadwarereviews.com\u{a}"))))
; u=with\x3AHBand,Deathhoroscope2
(assert (not (str.in_re X (str.to_re "u=with:HBand,Deathhoroscope2\u{a}"))))
; ^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}|(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/\d{2}|(0[1-9]|1[0-2])\-(0[1-9]|1\d|2\d|3[01])\-(19|20)\d{2}|(0[1-9]|1[0-2])\-(0[1-9]|1\d|2\d|3[01])\-\d{2}|([1-9]|1[0-2])\/([1-9]|1\d|2\d|3[01])\/(19|20)\d{2}|([1-9]|1[0-2])\/([1-9]|1\d|2\d|3[01])\/\d{2}|([1-9]|1[0-2])\-([1-9]|1\d|2\d|3[01])\-(19|20)\d{2}|([1-9]|1[0-2])\-([1-9]|1\d|2\d|3[01])\-\d{2}|(([0-9])|([0-2][0-9])|([3][0-1]))\-(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)\-\d{4}|(([0-9])|([0-2][0-9])|([3][0-1]))\-(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)\-\d{2}$
(assert (str.in_re X (re.union (re.++ (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (str.to_re "/") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1")))) (str.to_re "/") (re.union (str.to_re "19") (str.to_re "20")) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (str.to_re "/") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1")))) (str.to_re "/") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (str.to_re "-") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1")))) (str.to_re "-") (re.union (str.to_re "19") (str.to_re "20")) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (str.to_re "-") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1")))) (str.to_re "-") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (re.union (re.range "1" "9") (re.++ (str.to_re "1") (re.range "0" "2"))) (str.to_re "/") (re.union (re.range "1" "9") (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1")))) (str.to_re "/") (re.union (str.to_re "19") (str.to_re "20")) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (re.union (re.range "1" "9") (re.++ (str.to_re "1") (re.range "0" "2"))) (str.to_re "/") (re.union (re.range "1" "9") (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1")))) (str.to_re "/") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (re.union (re.range "1" "9") (re.++ (str.to_re "1") (re.range "0" "2"))) (str.to_re "-") (re.union (re.range "1" "9") (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1")))) (str.to_re "-") (re.union (str.to_re "19") (str.to_re "20")) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (re.union (re.range "1" "9") (re.++ (str.to_re "1") (re.range "0" "2"))) (str.to_re "-") (re.union (re.range "1" "9") (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1")))) (str.to_re "-") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (re.union (re.range "0" "9") (re.++ (re.range "0" "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.range "0" "1"))) (str.to_re "-") (re.union (str.to_re "Jan") (str.to_re "Feb") (str.to_re "Mar") (str.to_re "Apr") (str.to_re "May") (str.to_re "Jun") (str.to_re "Jul") (str.to_re "Aug") (str.to_re "Sep") (str.to_re "Oct") (str.to_re "Nov") (str.to_re "Dec")) (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (re.union (re.range "0" "9") (re.++ (re.range "0" "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.range "0" "1"))) (str.to_re "-") (re.union (str.to_re "Jan") (str.to_re "Feb") (str.to_re "Mar") (str.to_re "Apr") (str.to_re "May") (str.to_re "Jun") (str.to_re "Jul") (str.to_re "Aug") (str.to_re "Sep") (str.to_re "Oct") (str.to_re "Nov") (str.to_re "Dec")) (str.to_re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)

(exit)
