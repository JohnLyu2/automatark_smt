(declare-const X String)
; www\x2Eemp3finder\x2Ecom\d+ZOMBIES\x5fHTTP\x5fGET
(assert (not (str.in_re X (re.++ (str.to_re "www.emp3finder.com") (re.+ (re.range "0" "9")) (str.to_re "ZOMBIES_HTTP_GET\u{a}")))))
; User-Agent\x3ABetaWordixqshv\x2fqzccsServer\x00
(assert (not (str.in_re X (str.to_re "User-Agent:BetaWordixqshv/qzccsServer\u{0}\u{a}"))))
; /\*[^\/]+/
(assert (str.in_re X (re.++ (str.to_re "/*") (re.+ (re.comp (str.to_re "/"))) (str.to_re "/\u{a}"))))
; <\?xml.*</note>
(assert (str.in_re X (re.++ (str.to_re "<?xml") (re.* re.allchar) (str.to_re "</note>\u{a}"))))
(check-sat)

(exit)
