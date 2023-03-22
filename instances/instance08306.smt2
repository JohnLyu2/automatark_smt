(declare-const X String)
; Host\x3A[^\n\r]*\x2Fbar_pl\x2Fshdoclc\.fcgi
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "/bar_pl/shdoclc.fcgi\u{a}"))))
; TM_SEARCH3Host\x3aUser-Agent\x3Amedia\x2Edxcdirect\x2Ecom
(assert (str.in_re X (str.to_re "TM_SEARCH3Host:User-Agent:media.dxcdirect.com\u{a}")))
; \<img ((src|height|width|border)=:q:Wh*)*/\>
(assert (not (str.in_re X (re.++ (str.to_re "<img ") (re.* (re.++ (re.union (str.to_re "src") (str.to_re "height") (str.to_re "width") (str.to_re "border")) (str.to_re "=:q:W") (re.* (str.to_re "h")))) (str.to_re "/>\u{a}")))))
; /^(\x75|\x2d|\x2f|\x73|\xa2|\x2e|\x24|\x74)/sR
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "u") (str.to_re "-") (str.to_re "/") (str.to_re "s") (str.to_re "\u{a2}") (str.to_re ".") (str.to_re "$") (str.to_re "t")) (str.to_re "/sR\u{a}")))))
; info\s+wjpropqmlpohj\x2flo\x2Ftoolbar\x2Fsupremetbhoroscope2Cookie\x3a
(assert (str.in_re X (re.++ (str.to_re "info") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "wjpropqmlpohj/lo/toolbar/supremetbhoroscope2Cookie:\u{a}"))))
(check-sat)
