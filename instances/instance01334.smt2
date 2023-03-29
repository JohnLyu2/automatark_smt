(declare-const X String)
; toolsbar\x2Ekuaiso\x2Ecom\d\x2Fbar_pl\x2Fchk_bar\.fcgi
(assert (str.in_re X (re.++ (str.to_re "toolsbar.kuaiso.com") (re.range "0" "9") (str.to_re "/bar_pl/chk_bar.fcgi\u{a}"))))
(check-sat)

(exit)
