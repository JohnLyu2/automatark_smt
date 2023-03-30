(declare-const X String)
; ^(.)+\.(jpg|jpeg|JPG|JPEG)$
(assert (not (str.in_re X (re.++ (re.+ re.allchar) (str.to_re ".") (re.union (str.to_re "jpg") (str.to_re "jpeg") (str.to_re "JPG") (str.to_re "JPEG")) (str.to_re "\u{a}")))))
; (\<!--\s*.*?((--\>)|$))
(assert (str.in_re X (re.++ (str.to_re "\u{a}<!--") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* re.allchar) (str.to_re "-->"))))
; info\s+wjpropqmlpohj\x2flo\s+resultsmaster\x2Ecom\x7croogoo\x7c
(assert (not (str.in_re X (re.++ (str.to_re "info") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "wjpropqmlpohj/lo") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "resultsmaster.com\u{13}|roogoo|\u{a}")))))
; /\/html\/license_[0-9A-F]{550,}\.html$/Ui
(assert (str.in_re X (re.++ (str.to_re "//html/license_.html/Ui\u{a}") ((_ re.loop 550 550) (re.union (re.range "0" "9") (re.range "A" "F"))) (re.* (re.union (re.range "0" "9") (re.range "A" "F"))))))
; \x2Fezsb\s+hirmvtg\x2fggqh\.kqh\dRemotetoolsbar\x2Ekuaiso\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "/ezsb") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "hirmvtg/ggqh.kqh\u{1b}") (re.range "0" "9") (str.to_re "Remotetoolsbar.kuaiso.com\u{a}")))))
(check-sat)

(exit)
