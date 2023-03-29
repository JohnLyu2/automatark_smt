(declare-const X String)
; now\d+\x2Fbar_pl\x2Fshdoclc\.fcgiareHost\x3Ae2give\.com
(assert (not (str.in_re X (re.++ (str.to_re "now") (re.+ (re.range "0" "9")) (str.to_re "/bar_pl/shdoclc.fcgiareHost:e2give.com\u{a}")))))
; /filename=[^\n]*\x2easx/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".asx/i\u{a}"))))
(check-sat)

(exit)
