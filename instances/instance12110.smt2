(declare-const X String)
; traffbest\x2Ebiz\d+\.compress.*sidebar\.activeshopper\.comaresflashdownloader\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "traffbest.biz") (re.+ (re.range "0" "9")) (str.to_re ".compress") (re.* re.allchar) (str.to_re "sidebar.activeshopper.comaresflashdownloader.com\u{a}")))))
; ^\d{2}\-(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec|jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec|JAN|FEB|MAR|APR|MAY|JUN|JUL|AUG|SEP|OCT|NOV|DEC)\-\d{4}$
(assert (not (str.in_re X (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "-") (re.union (str.to_re "Jan") (str.to_re "Feb") (str.to_re "Mar") (str.to_re "Apr") (str.to_re "May") (str.to_re "Jun") (str.to_re "Jul") (str.to_re "Aug") (str.to_re "Sep") (str.to_re "Oct") (str.to_re "Nov") (str.to_re "Dec") (str.to_re "jan") (str.to_re "feb") (str.to_re "mar") (str.to_re "apr") (str.to_re "may") (str.to_re "jun") (str.to_re "jul") (str.to_re "aug") (str.to_re "sep") (str.to_re "oct") (str.to_re "nov") (str.to_re "dec") (str.to_re "JAN") (str.to_re "FEB") (str.to_re "MAR") (str.to_re "APR") (str.to_re "MAY") (str.to_re "JUN") (str.to_re "JUL") (str.to_re "AUG") (str.to_re "SEP") (str.to_re "OCT") (str.to_re "NOV") (str.to_re "DEC")) (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}")))))
; /filename=[^\n]*\x2ef4a/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".f4a/i\u{a}")))))
; ([0-9]|[0-9][0-9])\.\s
(assert (not (str.in_re X (re.++ (str.to_re ".") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "\u{a}") (re.range "0" "9") (re.range "0" "9")))))
; /\x2ejpm([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.jpm") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
(check-sat)

(exit)
