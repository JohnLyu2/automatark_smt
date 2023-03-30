(declare-const X String)
; /filename=[^\n]*\x2emkv/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mkv/i\u{a}"))))
; ^(((2|8|9)\d{2})|((02|08|09)\d{2})|([1-9]\d{3}))$
(assert (str.in_re X (re.++ (re.union (re.++ (re.union (str.to_re "2") (str.to_re "8") (str.to_re "9")) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "0") (re.union (str.to_re "2") (str.to_re "8") (str.to_re "9"))) (re.++ (re.range "1" "9") ((_ re.loop 3 3) (re.range "0" "9")))) (str.to_re "\u{a}"))))
; news\d+Host\x3A\d+Spywww\x2Eemp3finder\x2Ecomwwwvbclient\x3DSpyBuddyZOMBIES\x5fHTTP\x5fGETearch\x2Eearthlink
(assert (not (str.in_re X (re.++ (str.to_re "news") (re.+ (re.range "0" "9")) (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "Spywww.emp3finder.comwwwvbclient=SpyBuddyZOMBIES_HTTP_GETearch.earthlink\u{a}")))))
; ^[-+]?\d+(\.\d+)?$
(assert (not (str.in_re X (re.++ (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") (re.+ (re.range "0" "9")))) (str.to_re "\u{a}")))))
; libManager\x2Edll\x5Eget
(assert (not (str.in_re X (str.to_re "libManager.dll^get\u{a}"))))
(check-sat)

(exit)
