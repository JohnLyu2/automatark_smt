(declare-const X String)
; (((ht|f)tp(s?):\/\/)|(www\.[^ \[\]\(\)\n\r\t]+)|(([012]?[0-9]{1,2}\.){3}[012]?[0-9]{1,2})\/)([^ \[\]\(\),;"'<>\n\r\t]+)([^\. \[\]\(\),;"'<>\n\r\t])|(([012]?[0-9]{1,2}\.){3}[012]?[0-9]{1,2})
(assert (not (str.in_re X (re.union (re.++ (re.union (re.++ (re.union (str.to_re "ht") (str.to_re "f")) (str.to_re "tp") (re.opt (str.to_re "s")) (str.to_re "://")) (re.++ (str.to_re "www.") (re.+ (re.union (str.to_re " ") (str.to_re "[") (str.to_re "]") (str.to_re "(") (str.to_re ")") (str.to_re "\u{a}") (str.to_re "\u{d}") (str.to_re "\u{9}")))) (re.++ (str.to_re "/") ((_ re.loop 3 3) (re.++ (re.opt (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2"))) ((_ re.loop 1 2) (re.range "0" "9")) (str.to_re "."))) (re.opt (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2"))) ((_ re.loop 1 2) (re.range "0" "9")))) (re.+ (re.union (str.to_re " ") (str.to_re "[") (str.to_re "]") (str.to_re "(") (str.to_re ")") (str.to_re ",") (str.to_re ";") (str.to_re "\u{22}") (str.to_re "'") (str.to_re "<") (str.to_re ">") (str.to_re "\u{a}") (str.to_re "\u{d}") (str.to_re "\u{9}"))) (re.union (str.to_re ".") (str.to_re " ") (str.to_re "[") (str.to_re "]") (str.to_re "(") (str.to_re ")") (str.to_re ",") (str.to_re ";") (str.to_re "\u{22}") (str.to_re "'") (str.to_re "<") (str.to_re ">") (str.to_re "\u{a}") (str.to_re "\u{d}") (str.to_re "\u{9}"))) (re.++ (str.to_re "\u{a}") ((_ re.loop 3 3) (re.++ (re.opt (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2"))) ((_ re.loop 1 2) (re.range "0" "9")) (str.to_re "."))) (re.opt (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2"))) ((_ re.loop 1 2) (re.range "0" "9")))))))
; ^[0-9]{3}[-|/]{1}[0-9]{6}[-|/]{1}[0-9]{6}$
(assert (not (str.in_re X (re.++ ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to_re "-") (str.to_re "|") (str.to_re "/"))) ((_ re.loop 6 6) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to_re "-") (str.to_re "|") (str.to_re "/"))) ((_ re.loop 6 6) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)

(exit)
