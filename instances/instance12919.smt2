(declare-const X String)
; <\/?(tag1|tag2)[^>]*\/?>
(assert (str.in_re X (re.++ (str.to_re "<") (re.opt (str.to_re "/")) (re.* (re.comp (str.to_re ">"))) (re.opt (str.to_re "/")) (str.to_re ">\u{a}tag") (re.union (str.to_re "1") (str.to_re "2")))))
; /[0-9]+[stndrh]*\s*(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec)[a-z]*\s*([0-9][0-9][0-9][0-9])?|(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec)[a-z]*\s*[0-9]+[stndrh]*|[0-9]+[\/.-][0-9]+[\/.-][0-9]+[0-9]+|[saturnmoewdhfi]*day/i
(assert (str.in_re X (re.union (re.++ (str.to_re "/") (re.+ (re.range "0" "9")) (re.* (re.union (str.to_re "s") (str.to_re "t") (str.to_re "n") (str.to_re "d") (str.to_re "r") (str.to_re "h"))) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re "jan") (str.to_re "feb") (str.to_re "mar") (str.to_re "apr") (str.to_re "may") (str.to_re "jun") (str.to_re "jul") (str.to_re "aug") (str.to_re "sep") (str.to_re "oct") (str.to_re "nov") (str.to_re "dec")) (re.* (re.range "a" "z")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (re.++ (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9")))) (re.++ (re.union (str.to_re "jan") (str.to_re "feb") (str.to_re "mar") (str.to_re "apr") (str.to_re "may") (str.to_re "jun") (str.to_re "jul") (str.to_re "aug") (str.to_re "sep") (str.to_re "oct") (str.to_re "nov") (str.to_re "dec")) (re.* (re.range "a" "z")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.+ (re.range "0" "9")) (re.* (re.union (str.to_re "s") (str.to_re "t") (str.to_re "n") (str.to_re "d") (str.to_re "r") (str.to_re "h")))) (re.++ (re.+ (re.range "0" "9")) (re.union (str.to_re "/") (str.to_re ".") (str.to_re "-")) (re.+ (re.range "0" "9")) (re.union (str.to_re "/") (str.to_re ".") (str.to_re "-")) (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9"))) (re.++ (re.* (re.union (str.to_re "s") (str.to_re "a") (str.to_re "t") (str.to_re "u") (str.to_re "r") (str.to_re "n") (str.to_re "m") (str.to_re "o") (str.to_re "e") (str.to_re "w") (str.to_re "d") (str.to_re "h") (str.to_re "f") (str.to_re "i"))) (str.to_re "day/i\u{a}")))))
; /filename=[^\n]*\x2ep2g/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".p2g/i\u{a}"))))
; client\x2Ebaigoo\x2EcomUser\x3A
(assert (not (str.in_re X (str.to_re "client.baigoo.comUser:\u{a}"))))
; ^-?\d+([.,]?\d+)?$
(assert (str.in_re X (re.++ (re.opt (str.to_re "-")) (re.+ (re.range "0" "9")) (re.opt (re.++ (re.opt (re.union (str.to_re ".") (str.to_re ","))) (re.+ (re.range "0" "9")))) (str.to_re "\u{a}"))))
(check-sat)

(exit)
