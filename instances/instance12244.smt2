(declare-const X String)
; www\.trackhits\.cc\s+wwwHost\x3aRobertVersionspyblini\x2Eini
(assert (str.in_re X (re.++ (str.to_re "www.trackhits.cc") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "wwwHost:RobertVersionspyblini.ini\u{a}"))))
; www\x2e2-seek\x2ecom\x2fsearch\s+TPSystem
(assert (str.in_re X (re.++ (str.to_re "www.2-seek.com/search") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "TPSystem\u{a}"))))
; ^((\+)?(\d{2}[-]))?(\d{10}){1}?$
(assert (not (str.in_re X (re.++ (re.opt (re.++ (re.opt (str.to_re "+")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "-"))) ((_ re.loop 1 1) ((_ re.loop 10 10) (re.range "0" "9"))) (str.to_re "\u{a}")))))
; www\x2Eserverlogic3\x2Ecom\d+ToolBar\s+HWAEUser-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "www.serverlogic3.com") (re.+ (re.range "0" "9")) (str.to_re "ToolBar") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "HWAEUser-Agent:\u{a}"))))
; /^hello\/[0-9]\.[0-9]\/[0-9]{3}\/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}/i
(assert (not (str.in_re X (re.++ (str.to_re "/hello/") (re.range "0" "9") (str.to_re ".") (re.range "0" "9") (str.to_re "/") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "/") ((_ re.loop 8 8) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to_re "-") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to_re "-") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to_re "-") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to_re "-") ((_ re.loop 12 12) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to_re "/i\u{a}")))))
(check-sat)
