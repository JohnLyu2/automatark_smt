(declare-const X String)
; /\/feed\.dll\?pub_id=\d+?\&ua=/Ui
(assert (str.in_re X (re.++ (str.to_re "//feed.dll?pub_id=") (re.+ (re.range "0" "9")) (str.to_re "&ua=/Ui\u{a}"))))
; /\/crypt_1_sell\d\d-\d\d.exe$/Ui
(assert (str.in_re X (re.++ (str.to_re "//crypt_1_sell") (re.range "0" "9") (re.range "0" "9") (str.to_re "-") (re.range "0" "9") (re.range "0" "9") re.allchar (str.to_re "exe/Ui\u{a}"))))
; /nsrmm[^\x00]*?([\x3b\x7c\x26\x60]|\x24\x28)/
(assert (not (str.in_re X (re.++ (str.to_re "/nsrmm") (re.* (re.comp (str.to_re "\u{0}"))) (re.union (str.to_re "$(") (str.to_re ";") (str.to_re "|") (str.to_re "&") (str.to_re "`")) (str.to_re "/\u{a}")))))
(check-sat)
