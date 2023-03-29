(declare-const X String)
; Keylogger-Pro\s+isUser-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "Keylogger-Pro") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "isUser-Agent:\u{a}"))))
; /filename=[^\n]*\x2etif/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".tif/i\u{a}"))))
; /z\d{1,3}/Pi
(assert (str.in_re X (re.++ (str.to_re "/z") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re "/Pi\u{a}"))))
; Ready\s+Client\dFrom\x3AWebtool\x2Eworld2\x2EcnUser-Agent\x3AUser-Agent\x3aURLencoderthis\x7CConnected
(assert (str.in_re X (re.++ (str.to_re "Ready") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Client") (re.range "0" "9") (str.to_re "From:Webtool.world2.cn\u{13}User-Agent:User-Agent:URLencoderthis|Connected\u{a}"))))
; /php\?jnlp\=[a-f0-9]{10}($|\x2c)/U
(assert (not (str.in_re X (re.++ (str.to_re "/php?jnlp=") ((_ re.loop 10 10) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re ",/U\u{a}")))))
(check-sat)

(exit)
