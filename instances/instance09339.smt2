(declare-const X String)
; \x2Fbar_pl\x2Fshdoclc\.fcgi\w+Referer\x3A\d+\x2Fbar_pl\x2Fshdoclc\.fcgiareHost\x3A
(assert (str.in_re X (re.++ (str.to_re "/bar_pl/shdoclc.fcgi") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Referer:") (re.+ (re.range "0" "9")) (str.to_re "/bar_pl/shdoclc.fcgiareHost:\u{a}"))))
; ^[1]$|^[3]$|^[4]$|^[6]$|^[1]0$
(assert (not (str.in_re X (re.union (str.to_re "1") (str.to_re "3") (str.to_re "4") (str.to_re "6") (str.to_re "10\u{a}")))))
; \$[0-9]?[0-9]?[0-9]?((\,[0-9][0-9][0-9])*)?(\.[0-9][0-9]?)?$
(assert (not (str.in_re X (re.++ (str.to_re "$") (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.opt (re.* (re.++ (str.to_re ",") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9")))) (re.opt (re.++ (str.to_re ".") (re.range "0" "9") (re.opt (re.range "0" "9")))) (str.to_re "\u{a}")))))
; /filename=[^\n]*\x2esln/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".sln/i\u{a}")))))
(check-sat)

(exit)
