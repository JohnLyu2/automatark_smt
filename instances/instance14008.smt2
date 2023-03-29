(declare-const X String)
; Address\x3A\s+SbAtsHTTP_RAT_Subject\x3A
(assert (not (str.in_re X (re.++ (str.to_re "Address:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "SbAtsHTTP_RAT_Subject:\u{a}")))))
; /\/AES\d+O\d+\.jsp\?[a-z0-9=\x2b\x2f]{20}/iU
(assert (str.in_re X (re.++ (str.to_re "//AES") (re.+ (re.range "0" "9")) (str.to_re "O") (re.+ (re.range "0" "9")) (str.to_re ".jsp?") ((_ re.loop 20 20) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "=") (str.to_re "+") (str.to_re "/"))) (str.to_re "/iU\u{a}"))))
; www\x2Esearchreslt\x2Ecom
(assert (not (str.in_re X (str.to_re "www.searchreslt.com\u{a}"))))
; /filename=[^\n]*\x2ehpj/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".hpj/i\u{a}")))))
; mPOPUser-Agent\x3AgotS\x3aUsers\x5cPORT\x3DHXLogOnlyMGS-Internal-Web-Manager
(assert (not (str.in_re X (str.to_re "mPOPUser-Agent:gotS:Users\u{5c}PORT=HXLogOnlyMGS-Internal-Web-Manager\u{a}"))))
(check-sat)

(exit)
