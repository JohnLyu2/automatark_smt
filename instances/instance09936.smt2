(declare-const X String)
; spas\d+media\x2Edxcdirect\x2Ecom\.smx\?PASSW=
(assert (str.in_re X (re.++ (str.to_re "spas") (re.+ (re.range "0" "9")) (str.to_re "media.dxcdirect.com.smx?PASSW=\u{a}"))))
; /filename=[^\n]*\x2emid/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mid/i\u{a}"))))
; IPUSER-Host\x3AUser-Agent\x3A\x2Fsearchfast\x2F
(assert (not (str.in_re X (str.to_re "IPUSER-Host:User-Agent:/searchfast/\u{a}"))))
; Host\x3A\d+Black\s+daosearch\x2EcomMyPostwww\.raxsearch\.com
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "Black") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "daosearch.comMyPostwww.raxsearch.com\u{a}"))))
; /^fastddos\x7c\d+\x7c\d+\x7C[a-z0-9]+\x2E[a-z]{2,3}\x7C[a-z0-9]+\x7C/
(assert (str.in_re X (re.++ (str.to_re "/fastddos|") (re.+ (re.range "0" "9")) (str.to_re "|") (re.+ (re.range "0" "9")) (str.to_re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re ".") ((_ re.loop 2 3) (re.range "a" "z")) (str.to_re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "|/\u{a}"))))
(check-sat)

(exit)
