(declare-const X String)
; ^(([0-9]{5})*-([0-9]{4}))|([0-9]{5})$
(assert (str.in_re X (re.union (re.++ (re.* ((_ re.loop 5 5) (re.range "0" "9"))) (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to_re "\u{a}")))))
; log\=\x7BIP\x3A\d\x2Etxt\s+Pcast\x2Edat\x2EToolbar\x7D\x7BOS\x3Atoolsbar\x2Ekuaiso\x2EcomHost\x3A
(assert (not (str.in_re X (re.++ (str.to_re "log={IP:") (re.range "0" "9") (str.to_re ".txt") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Pcast.dat.Toolbar}{OS:toolsbar.kuaiso.comHost:\u{a}")))))
; ^((([0]?[1-9]|1[0-2])(:|\.)[0-5][0-9]((:|\.)[0-5][0-9])?( )?(AM|am|aM|Am|PM|pm|pM|Pm))|(([0]?[0-9]|1[0-9]|2[0-3])(:|\.)[0-5][0-9]((:|\.)[0-5][0-9])?))$
(assert (str.in_re X (re.++ (re.union (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (re.union (str.to_re ":") (str.to_re ".")) (re.range "0" "5") (re.range "0" "9") (re.opt (re.++ (re.union (str.to_re ":") (str.to_re ".")) (re.range "0" "5") (re.range "0" "9"))) (re.opt (str.to_re " ")) (re.union (str.to_re "AM") (str.to_re "am") (str.to_re "aM") (str.to_re "Am") (str.to_re "PM") (str.to_re "pm") (str.to_re "pM") (str.to_re "Pm"))) (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.range "0" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) (re.union (str.to_re ":") (str.to_re ".")) (re.range "0" "5") (re.range "0" "9") (re.opt (re.++ (re.union (str.to_re ":") (str.to_re ".")) (re.range "0" "5") (re.range "0" "9"))))) (str.to_re "\u{a}"))))
; /\x2f\x3fdp\x3d[A-Z0-9]{50}&cb\x3d[0-9]{9}/Ui
(assert (str.in_re X (re.++ (str.to_re "//?dp=") ((_ re.loop 50 50) (re.union (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "&cb=") ((_ re.loop 9 9) (re.range "0" "9")) (str.to_re "/Ui\u{a}"))))
; /\x00hide hide\x22\x09\x22([a-z0-9\x5c\x2e\x3a]+\x2eexe|sh)/
(assert (not (str.in_re X (re.++ (str.to_re "/\u{0}hide hide\u{22}\u{9}\u{22}") (re.union (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "\u{5c}") (str.to_re ".") (str.to_re ":"))) (str.to_re ".exe")) (str.to_re "sh")) (str.to_re "/\u{a}")))))
(check-sat)
