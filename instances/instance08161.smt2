(declare-const X String)
; search\.dropspam\.com.*pjpoptwql\x2frlnj
(assert (not (str.in_re X (re.++ (str.to_re "search.dropspam.com") (re.* re.allchar) (str.to_re "pjpoptwql/rlnj\u{a}")))))
; /filename=[^\n]*\x2epfm/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pfm/i\u{a}"))))
; ^[+][0-9]\d{2}-\d{3}-\d{4}$
(assert (str.in_re X (re.++ (str.to_re "+") (re.range "0" "9") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}"))))
; Host\x3aYOUR\x2Fxml\x2Ftoolbar\x2FGREATExplorerSecureNet
(assert (not (str.in_re X (str.to_re "Host:YOUR/xml/toolbar/GREATExplorerSecureNet\u{a}"))))
(check-sat)

(exit)
