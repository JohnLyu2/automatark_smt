(declare-const X String)
; /filename=[^\n]*\x2emim/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mim/i\u{a}")))))
; \x2Fbar_pl\x2Fshdoclc\.fcgisource%3Dultrasearch136%26campaign%3DsnapEIHBand,
(assert (str.in_re X (str.to_re "/bar_pl/shdoclc.fcgisource%3Dultrasearch136%26campaign%3DsnapEIHBand,\u{a}")))
; /[0-9]+[stndrh]*\s*(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec)[a-z]*\s*([0-9][0-9][0-9][0-9])?|(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec)[a-z]*\s*[0-9]+[stndrh]*|[0-9]+[\/.-][0-9]+[\/.-][0-9]+[0-9]+|[saturnmoewdhfi]*day/i
(assert (not (str.in_re X (re.union (re.++ (str.to_re "/") (re.+ (re.range "0" "9")) (re.* (re.union (str.to_re "s") (str.to_re "t") (str.to_re "n") (str.to_re "d") (str.to_re "r") (str.to_re "h"))) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re "jan") (str.to_re "feb") (str.to_re "mar") (str.to_re "apr") (str.to_re "may") (str.to_re "jun") (str.to_re "jul") (str.to_re "aug") (str.to_re "sep") (str.to_re "oct") (str.to_re "nov") (str.to_re "dec")) (re.* (re.range "a" "z")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (re.++ (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9")))) (re.++ (re.union (str.to_re "jan") (str.to_re "feb") (str.to_re "mar") (str.to_re "apr") (str.to_re "may") (str.to_re "jun") (str.to_re "jul") (str.to_re "aug") (str.to_re "sep") (str.to_re "oct") (str.to_re "nov") (str.to_re "dec")) (re.* (re.range "a" "z")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.+ (re.range "0" "9")) (re.* (re.union (str.to_re "s") (str.to_re "t") (str.to_re "n") (str.to_re "d") (str.to_re "r") (str.to_re "h")))) (re.++ (re.+ (re.range "0" "9")) (re.union (str.to_re "/") (str.to_re ".") (str.to_re "-")) (re.+ (re.range "0" "9")) (re.union (str.to_re "/") (str.to_re ".") (str.to_re "-")) (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9"))) (re.++ (re.* (re.union (str.to_re "s") (str.to_re "a") (str.to_re "t") (str.to_re "u") (str.to_re "r") (str.to_re "n") (str.to_re "m") (str.to_re "o") (str.to_re "e") (str.to_re "w") (str.to_re "d") (str.to_re "h") (str.to_re "f") (str.to_re "i"))) (str.to_re "day/i\u{a}"))))))
; /filename=[^\n]*\x2ecnt/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".cnt/i\u{a}")))))
; /filename=[^\n]*\x2eotf/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".otf/i\u{a}")))))
(check-sat)

(exit)
