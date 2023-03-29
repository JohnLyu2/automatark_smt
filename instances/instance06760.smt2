(declare-const X String)
; `.*?((http|ftp|https)://[\w#$&+,\/:;=?@.-]+)[^\w#$&+,\/:;=?@.-]*?`i
(assert (not (str.in_re X (re.++ (str.to_re "`") (re.* re.allchar) (re.* (re.union (str.to_re "#") (str.to_re "$") (str.to_re "&") (str.to_re "+") (str.to_re ",") (str.to_re "/") (str.to_re ":") (str.to_re ";") (str.to_re "=") (str.to_re "?") (str.to_re "@") (str.to_re ".") (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "`i\u{a}") (re.union (str.to_re "http") (str.to_re "ftp") (str.to_re "https")) (str.to_re "://") (re.+ (re.union (str.to_re "#") (str.to_re "$") (str.to_re "&") (str.to_re "+") (str.to_re ",") (str.to_re "/") (str.to_re ":") (str.to_re ";") (str.to_re "=") (str.to_re "?") (str.to_re "@") (str.to_re ".") (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))))))
; Host\x3AFrom\x3aUser-Agent\x3A\x2Fr\x2Fkeys\x2FkeysClient
(assert (not (str.in_re X (str.to_re "Host:From:User-Agent:/r/keys/keysClient\u{a}"))))
; www\x2Emyarmory\x2EcomHost\x3aHost\x3amessagessearch\x2eimesh\x2ecom
(assert (str.in_re X (str.to_re "www.myarmory.comHost:Host:messagessearch.imesh.com\u{a}")))
; XP\d+Acme\s+\x2Fcbn\x2Fnode=Host\x3A\x3Fsearch\x3DversionContact
(assert (str.in_re X (re.++ (str.to_re "XP") (re.+ (re.range "0" "9")) (str.to_re "Acme") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/cbn/node=Host:?search=versionContact\u{a}"))))
; ^\d{1,7}$
(assert (not (str.in_re X (re.++ ((_ re.loop 1 7) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)

(exit)
