(declare-const X String)
; Subject\x3a.*Host\x3a.*\x2Fproducts\x2Fspyblocs\x2F\sinternalcyber@yahoo\x2EcomHeadersRedirection
(assert (str.in_re X (re.++ (str.to_re "Subject:") (re.* re.allchar) (str.to_re "Host:") (re.* re.allchar) (str.to_re "/products/spyblocs/\u{13}") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "internalcyber@yahoo.comHeadersRedirection\u{a}"))))
; ^([\s\S]){1,20}([\s\.])
(assert (str.in_re X (re.++ ((_ re.loop 1 20) (re.union (re.comp (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re ".") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "\u{a}"))))
; Host\x3a\s+Agentbody=\x2521\x2521\x2521OptixSubject\x3A
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Agentbody=%21%21%21Optix\u{13}Subject:\u{a}")))))
(check-sat)

(exit)
