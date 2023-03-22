(declare-const X String)
; /version\x3D[\x22\x27][^\x22\x27]{1024}/
(assert (str.in_re X (re.++ (str.to_re "/version=") (re.union (str.to_re "\u{22}") (str.to_re "'")) ((_ re.loop 1024 1024) (re.union (str.to_re "\u{22}") (str.to_re "'"))) (str.to_re "/\u{a}"))))
; \b[1-9]\b
(assert (not (str.in_re X (re.++ (re.range "1" "9") (str.to_re "\u{a}")))))
; /filename=[^\n]*\x2emht/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mht/i\u{a}"))))
; URLBlaze.*User-Agent\x3A.*mPOPUser-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "URLBlaze") (re.* re.allchar) (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "mPOPUser-Agent:\u{a}")))))
; xbqyosoe\x2fcpvmwww\x2eurlblaze\x2enetconfigINTERNAL\.ini
(assert (not (str.in_re X (str.to_re "xbqyosoe/cpvmwww.urlblaze.netconfigINTERNAL.ini\u{a}"))))
(check-sat)
