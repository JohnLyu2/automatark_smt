(declare-const X String)
; isSAH\*Agentwww\.raxsearch\.comHost\x3A-~-\x22The
(assert (not (str.in_re X (str.to_re "isSAH*Agentwww.raxsearch.comHost:-~-\u{22}The\u{a}"))))
; (INSERT INTO\s+)(\w+)(\s+\()([\w+,?\s*]+)(\)\s+VALUES\s+)((\(['?\w+'?,?\s*]+\)\,?;?\s*)+)
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.+ (re.union (str.to_re "+") (str.to_re ",") (str.to_re "?") (str.to_re "*") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.+ (re.++ (str.to_re "(") (re.+ (re.union (str.to_re "'") (str.to_re "?") (str.to_re "+") (str.to_re ",") (str.to_re "*") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ")") (re.opt (str.to_re ",")) (re.opt (str.to_re ";")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))) (str.to_re "\u{a}INSERT INTO") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "()") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "VALUES") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))))))
; wjpropqmlpohj\x2flo\s+media\x2Edxcdirect\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "wjpropqmlpohj/lo") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "media.dxcdirect.com\u{a}"))))
; Host\x3AHost\x3AFrom\x3a\x03\x00\x1c\x00\x00\x00\x00\x00\x01Furaxbnymomspyo\x2fzowy
(assert (not (str.in_re X (str.to_re "Host:Host:From:\u{3}\u{0}\u{1c}\u{0}\u{0}\u{0}\u{0}\u{0}\u{1}Furaxbnymomspyo/zowy\u{a}"))))
(check-sat)

(exit)
