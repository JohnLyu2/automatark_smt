(declare-const X String)
; AD\s+c\.goclick\.com\w+asdbiz\x2Ebizfrom\x7croogoo\x7cCurrent
(assert (not (str.in_re X (re.++ (str.to_re "AD") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "c.goclick.com") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "asdbiz.bizfrom|roogoo|Current\u{a}")))))
; /#-START-#([A-Za-z0-9+\x2f]{4})*([A-Za-z0-9+\x2f]{2}==|[A-Za-z0-9+\x2f]{3}=)?#-END-#/
(assert (str.in_re X (re.++ (str.to_re "/#-START-#") (re.* ((_ re.loop 4 4) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "+") (str.to_re "/")))) (re.opt (re.union (re.++ ((_ re.loop 2 2) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "+") (str.to_re "/"))) (str.to_re "==")) (re.++ ((_ re.loop 3 3) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "+") (str.to_re "/"))) (str.to_re "=")))) (str.to_re "#-END-#/\u{a}"))))
; /\/pte\.aspx\?ver=\d\.\d\.\d+\.\d\x26rnd=\d{5}/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//pte.aspx?ver=") (re.range "0" "9") (str.to_re ".") (re.range "0" "9") (str.to_re ".") (re.+ (re.range "0" "9")) (str.to_re ".") (re.range "0" "9") (str.to_re "&rnd=") ((_ re.loop 5 5) (re.range "0" "9")) (str.to_re "/Ui\u{a}")))))
; /[a-z\d\x2f\x2b\x3d]{100,300}/Pi
(assert (not (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 100 300) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "/") (str.to_re "+") (str.to_re "="))) (str.to_re "/Pi\u{a}")))))
; Project\x2Eearthlinkshprrprt-cs-
(assert (not (str.in_re X (str.to_re "Project.earthlinkshprrprt-cs-\u{13}\u{a}"))))
(check-sat)

(exit)
