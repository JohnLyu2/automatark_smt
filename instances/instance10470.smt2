(declare-const X String)
; Host\x3ADIMBUSsidebar\.activeshopper\.comUser-Agent\x3APcast
(assert (str.in_re X (str.to_re "Host:DIMBUSsidebar.activeshopper.comUser-Agent:Pcast\u{a}")))
; target[ ]*[=]([ ]*)(["]|['])*([_])*([A-Za-z0-9])+(["])*
(assert (str.in_re X (re.++ (str.to_re "target") (re.* (str.to_re " ")) (str.to_re "=") (re.* (str.to_re " ")) (re.* (re.union (str.to_re "\u{22}") (str.to_re "'"))) (re.* (str.to_re "_")) (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (re.* (str.to_re "\u{22}")) (str.to_re "\u{a}"))))
; messages.*Windows.*From\x3AX-Mailer\x3a+\x2Fcbn\x2FearchSchwindler
(assert (str.in_re X (re.++ (str.to_re "messages") (re.* re.allchar) (str.to_re "Windows") (re.* re.allchar) (str.to_re "From:X-Mailer") (re.+ (str.to_re ":")) (str.to_re "/cbn/earchSchwindler\u{a}"))))
; www\.123mania\.com\x2F0409areZC-Bridge
(assert (str.in_re X (str.to_re "www.123mania.com/0409areZC-Bridge\u{a}")))
(check-sat)
