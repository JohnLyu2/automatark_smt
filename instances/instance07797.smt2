(declare-const X String)
; /encoding\x3D[\x22\x27][^\x22\x27]{1024}/
(assert (str.in_re X (re.++ (str.to_re "/encoding=") (re.union (str.to_re "\u{22}") (str.to_re "'")) ((_ re.loop 1024 1024) (re.union (str.to_re "\u{22}") (str.to_re "'"))) (str.to_re "/\u{a}"))))
; ^[SC]{2}[0-9]{6}$
(assert (str.in_re X (re.++ ((_ re.loop 2 2) (re.union (str.to_re "S") (str.to_re "C"))) ((_ re.loop 6 6) (re.range "0" "9")) (str.to_re "\u{a}"))))
; IDENTIFY.*\/cgi-bin\/PopupV.*Host\x3Asearchreslt
(assert (not (str.in_re X (re.++ (str.to_re "IDENTIFY") (re.* re.allchar) (str.to_re "/cgi-bin/PopupV") (re.* re.allchar) (str.to_re "Host:searchreslt\u{a}")))))
; [({]?(0x)?[0-9a-fA-F]{8}([-,]?(0x)?[0-9a-fA-F]{4}){2}((-?[0-9a-fA-F]{4}-?[0-9a-fA-F]{12})|(,\{0x[0-9a-fA-F]{2}(,0x[0-9a-fA-F]{2}){7}\}))[)}]?
(assert (not (str.in_re X (re.++ (re.opt (re.union (str.to_re "(") (str.to_re "{"))) (re.opt (str.to_re "0x")) ((_ re.loop 8 8) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) ((_ re.loop 2 2) (re.++ (re.opt (re.union (str.to_re "-") (str.to_re ","))) (re.opt (str.to_re "0x")) ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))))) (re.union (re.++ (re.opt (str.to_re "-")) ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (re.opt (str.to_re "-")) ((_ re.loop 12 12) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F")))) (re.++ (str.to_re ",{0x") ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) ((_ re.loop 7 7) (re.++ (str.to_re ",0x") ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))))) (str.to_re "}"))) (re.opt (re.union (str.to_re ")") (str.to_re "}"))) (str.to_re "\u{a}")))))
; ^([^ \x21-\x26\x28-\x2C\x2E-\x40\x5B-\x60\x7B-\xAC\xAE-\xBF\xF7\xFE]+)$
(assert (str.in_re X (re.++ (re.+ (re.union (str.to_re " ") (re.range "!" "&") (re.range "(" ",") (re.range "." "@") (re.range "[" "`") (re.range "{" "\u{ac}") (re.range "\u{ae}" "\u{bf}") (str.to_re "\u{f7}") (str.to_re "\u{fe}"))) (str.to_re "\u{a}"))))
(check-sat)
