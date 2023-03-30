(declare-const X String)
; ^([3]{1}[0-1]{1}|[1-1]?[0-9]{1})-([0-1]?[0-2]{1}|[0-9]{1})-[0-9]{4}([\s]+([2]{1}[0-3]{1}|[0-1]?[0-9]{1})[:]{1}([0-5]?[0-9]{1})([:]{1}([0-5]?[0-9]{1}))?)?$
(assert (str.in_re X (re.++ (re.union (re.++ ((_ re.loop 1 1) (str.to_re "3")) ((_ re.loop 1 1) (re.range "0" "1"))) (re.++ (re.opt (re.range "1" "1")) ((_ re.loop 1 1) (re.range "0" "9")))) (str.to_re "-") (re.union (re.++ (re.opt (re.range "0" "1")) ((_ re.loop 1 1) (re.range "0" "2"))) ((_ re.loop 1 1) (re.range "0" "9"))) (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.++ (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (re.++ ((_ re.loop 1 1) (str.to_re "2")) ((_ re.loop 1 1) (re.range "0" "3"))) (re.++ (re.opt (re.range "0" "1")) ((_ re.loop 1 1) (re.range "0" "9")))) ((_ re.loop 1 1) (str.to_re ":")) (re.opt (re.++ ((_ re.loop 1 1) (str.to_re ":")) (re.opt (re.range "0" "5")) ((_ re.loop 1 1) (re.range "0" "9")))) (re.opt (re.range "0" "5")) ((_ re.loop 1 1) (re.range "0" "9")))) (str.to_re "\u{a}"))))
; Host\x3A\d+rprpgbnrppb\x2fci[^\n\r]*RXFilteredDmInf\x5E
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "rprpgbnrppb/ci") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "RXFilteredDmInf^\u{a}")))))
; User-Agent\x3A\d+Desktop\sIDENTIFY666User-Agent\x3A\x5BStatic
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "Desktop") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "IDENTIFY666User-Agent:[Static\u{a}")))))
; \x3Cchat\x3EHost\x3Atid\x3D\x7B
(assert (not (str.in_re X (str.to_re "<chat>\u{1b}Host:tid={\u{a}"))))
(check-sat)

(exit)
