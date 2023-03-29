(declare-const X String)
; xmlpage=Host\x3A\x2EhtmlUser-Agent\x3Abindmqnqgijmng\x2fojMirar_KeywordContent
(assert (not (str.in_re X (str.to_re "xmlpage=Host:.htmlUser-Agent:bindmqnqgijmng/ojMirar_KeywordContent\u{13}\u{a}"))))
; ^(((((0[1-9])|(1\d)|(2[0-8]))-((0[1-9])|(1[0-2])))|((31-((0[13578])|(1[02])))|((29|30)-((0[1,3-9])|(1[0-2])))))-((20[0-9][0-9]))|(29-02-20(([02468][048])|([13579][26]))))$
(assert (str.in_re X (re.++ (re.union (re.++ (re.union (re.++ (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "8"))) (str.to_re "-") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "2")))) (re.++ (str.to_re "31-") (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "2"))))) (re.++ (re.union (str.to_re "29") (str.to_re "30")) (str.to_re "-") (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re ",") (re.range "3" "9"))) (re.++ (str.to_re "1") (re.range "0" "2"))))) (str.to_re "-20") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to_re "29-02-20") (re.union (re.++ (re.union (str.to_re "0") (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6")))))) (str.to_re "\u{a}"))))
; cdpView.*protocol.*\x2Fs\x28robert\x40blackcastlesoft\x2Ecom\x29
(assert (str.in_re X (re.++ (str.to_re "cdpView") (re.* re.allchar) (str.to_re "protocol") (re.* re.allchar) (str.to_re "/s(robert@blackcastlesoft.com)\u{a}"))))
; KeyloggerFSWcmdldap\x3A\x2F\x2FExploiterconnection\x2Ewww\x2Eoemji\x2Ecomzopabora\x2EinfoConnection
(assert (str.in_re X (str.to_re "KeyloggerFSWcmdldap://Exploiterconnection.www.oemji.comzopabora.infoConnection\u{a}")))
; ^(([0-1]?[1-9]|2[0-3])(:)([0-5][0-9]))$
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") (re.union (re.++ (re.opt (re.range "0" "1")) (re.range "1" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) (str.to_re ":") (re.range "0" "5") (re.range "0" "9")))))
(check-sat)

(exit)
