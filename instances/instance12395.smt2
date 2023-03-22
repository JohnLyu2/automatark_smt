(declare-const X String)
; ^[0-3]{1}[0-9]{1}[ ]{1}(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec|JAN|FEB|MAR|APR|MAY|JUN|JUL|AUG|SEP|OCT|NOV|DEC|jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec){1}[ ]{1}[0-9]{2}$
(assert (not (str.in_re X (re.++ ((_ re.loop 1 1) (re.range "0" "3")) ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 1 1) (str.to_re " ")) ((_ re.loop 1 1) (re.union (str.to_re "Jan") (str.to_re "Feb") (str.to_re "Mar") (str.to_re "Apr") (str.to_re "May") (str.to_re "Jun") (str.to_re "Jul") (str.to_re "Aug") (str.to_re "Sep") (str.to_re "Oct") (str.to_re "Nov") (str.to_re "Dec") (str.to_re "JAN") (str.to_re "FEB") (str.to_re "MAR") (str.to_re "APR") (str.to_re "MAY") (str.to_re "JUN") (str.to_re "JUL") (str.to_re "AUG") (str.to_re "SEP") (str.to_re "OCT") (str.to_re "NOV") (str.to_re "DEC") (str.to_re "jan") (str.to_re "feb") (str.to_re "mar") (str.to_re "apr") (str.to_re "may") (str.to_re "jun") (str.to_re "jul") (str.to_re "aug") (str.to_re "sep") (str.to_re "oct") (str.to_re "nov") (str.to_re "dec"))) ((_ re.loop 1 1) (str.to_re " ")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "\u{a}")))))
; ^(([^,\n]+),([^,\n]+),([^@]+)@([^\.]+)\.([^,\n]+)\n)+([^,\n]+),([^,\n]+),([^@]+)@([^\.]+)\.([^,\n]+)\n?$
(assert (not (str.in_re X (re.++ (re.+ (re.++ (re.+ (re.union (str.to_re ",") (str.to_re "\u{a}"))) (str.to_re ",") (re.+ (re.union (str.to_re ",") (str.to_re "\u{a}"))) (str.to_re ",") (re.+ (re.comp (str.to_re "@"))) (str.to_re "@") (re.+ (re.comp (str.to_re "."))) (str.to_re ".") (re.+ (re.union (str.to_re ",") (str.to_re "\u{a}"))) (str.to_re "\u{a}"))) (re.+ (re.union (str.to_re ",") (str.to_re "\u{a}"))) (str.to_re ",") (re.+ (re.union (str.to_re ",") (str.to_re "\u{a}"))) (str.to_re ",") (re.+ (re.comp (str.to_re "@"))) (str.to_re "@") (re.+ (re.comp (str.to_re "."))) (str.to_re ".") (re.+ (re.union (str.to_re ",") (str.to_re "\u{a}"))) (re.opt (str.to_re "\u{a}")) (str.to_re "\u{a}")))))
; ^[0][5][0]-\d{7}|[0][5][2]-\d{7}|[0][5][4]-\d{7}|[0][5][7]-\d{7}|[0][7][7]-\d{7}|[0][2]-\d{7}|[0][3]-\d{7}|[0][4]-\d{7}|[0][8]-\d{7}|[0][9]-\d{7}|[0][5][0]\d{7}|[0][5][2]\d{7}|[0][5][4]\d{7}|[0][5][7]\d{7}|[0][7][7]\d{7}|[0][2]\d{7}|[0][3]\d{7}|[0][4]\d{7}|[0][8]\d{7}|[0][9]\d{7}$
(assert (str.in_re X (re.union (re.++ (str.to_re "050-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "052-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "054-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "057-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "077-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "02-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "03-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "04-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "08-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "09-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "050") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "052") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "054") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "057") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "077") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "02") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "03") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "04") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "08") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "09") ((_ re.loop 7 7) (re.range "0" "9")) (str.to_re "\u{a}")))))
; ^((1[1-9]|2[03489]|3[0347]|5[56]|7[04-9]|8[047]|9[018])\d{8}|(1[2-9]\d|[58]00)\d{6}|8(001111|45464\d))$
(assert (str.in_re X (re.++ (re.union (re.++ (re.union (re.++ (str.to_re "1") (re.range "1" "9")) (re.++ (str.to_re "2") (re.union (str.to_re "0") (str.to_re "3") (str.to_re "4") (str.to_re "8") (str.to_re "9"))) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "3") (str.to_re "4") (str.to_re "7"))) (re.++ (str.to_re "5") (re.union (str.to_re "5") (str.to_re "6"))) (re.++ (str.to_re "7") (re.union (str.to_re "0") (re.range "4" "9"))) (re.++ (str.to_re "8") (re.union (str.to_re "0") (str.to_re "4") (str.to_re "7"))) (re.++ (str.to_re "9") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "8")))) ((_ re.loop 8 8) (re.range "0" "9"))) (re.++ (re.union (re.++ (str.to_re "1") (re.range "2" "9") (re.range "0" "9")) (re.++ (re.union (str.to_re "5") (str.to_re "8")) (str.to_re "00"))) ((_ re.loop 6 6) (re.range "0" "9"))) (re.++ (str.to_re "8") (re.union (str.to_re "001111") (re.++ (str.to_re "45464") (re.range "0" "9"))))) (str.to_re "\u{a}"))))
; /filename=[\x22\x27]?[^\n]*\x2egni[\x22\x27\s]/si
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.opt (re.union (str.to_re "\u{22}") (str.to_re "'"))) (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".gni") (re.union (str.to_re "\u{22}") (str.to_re "'") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "/si\u{a}")))))
(check-sat)
