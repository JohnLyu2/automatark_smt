(declare-const X String)
; ^([0-9]{1}[\d]{0,2}(\,[\d]{3})*(\,[\d]{0,2})?|[0-9]{1}[\d]{0,}(\,[\d]{0,2})?|0(\,[\d]{0,2})?|(\,[\d]{1,2})?)$
(assert (not (str.in_re X (re.++ (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 0 2) (re.range "0" "9")) (re.* (re.++ (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9")))) (re.opt (re.++ (str.to_re ",") ((_ re.loop 0 2) (re.range "0" "9"))))) (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (re.* (re.range "0" "9")) (re.opt (re.++ (str.to_re ",") ((_ re.loop 0 2) (re.range "0" "9"))))) (re.++ (str.to_re "0") (re.opt (re.++ (str.to_re ",") ((_ re.loop 0 2) (re.range "0" "9"))))) (re.opt (re.++ (str.to_re ",") ((_ re.loop 1 2) (re.range "0" "9"))))) (str.to_re "\u{a}")))))
; /^(\x00\x00\x00\x00|.{4}(\x00\x00\x00\x00|.{12}))/s
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "\u{0}\u{0}\u{0}\u{0}") (re.++ ((_ re.loop 4 4) re.allchar) (re.union (str.to_re "\u{0}\u{0}\u{0}\u{0}") ((_ re.loop 12 12) re.allchar)))) (str.to_re "/s\u{a}")))))
; /Accept\x3a\x20text\/\*\x2c\x20application\/\*\x0d\x0aUser-Agent\x3a\x20[^\n]+\x0d\x0aHost\x3a[^\n]+\x0d\x0a(Pragma|Cache-Control)\x3a\x20no-cache\x0d\x0a(Connection\x3a Keep-Alive\x0d\x0a)?(\x0d\x0a)?$/
(assert (not (str.in_re X (re.++ (str.to_re "/Accept: text/*, application/*\u{d}\u{a}User-Agent: ") (re.+ (re.comp (str.to_re "\u{a}"))) (str.to_re "\u{d}\u{a}Host:") (re.+ (re.comp (str.to_re "\u{a}"))) (str.to_re "\u{d}\u{a}") (re.union (str.to_re "Pragma") (str.to_re "Cache-Control")) (str.to_re ": no-cache\u{d}\u{a}") (re.opt (str.to_re "Connection: Keep-Alive\u{d}\u{a}")) (re.opt (str.to_re "\u{d}\u{a}")) (str.to_re "/\u{a}")))))
; ad\x2Emokead\x2Ecom\d+Spy\d+ZOMBIES\x5fHTTP\x5fGETearch\x2Eearthlinkwww\x2Epurityscan\x2EcomUser-Agent\x3a
(assert (str.in_re X (re.++ (str.to_re "ad.mokead.com") (re.+ (re.range "0" "9")) (str.to_re "Spy") (re.+ (re.range "0" "9")) (str.to_re "ZOMBIES_HTTP_GETearch.earthlinkwww.purityscan.comUser-Agent:\u{a}"))))
(check-sat)

(exit)
