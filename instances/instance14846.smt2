(declare-const X String)
; Readydoarauzeraqf\x2fvvv\.ulPALTALKHello\x2EMyAgentUser-Agent\x3AIP-FILEUser-Agent\x3AUser-Agent\x3A
(assert (not (str.in_re X (str.to_re "Readydoarauzeraqf/vvv.ulPALTALKHello.MyAgentUser-Agent:IP-FILEUser-Agent:User-Agent:\u{a}"))))
; ((19|20)[\d]{2}/[\d]{6}/[\d]{2})
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") (re.union (str.to_re "19") (str.to_re "20")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "/") ((_ re.loop 6 6) (re.range "0" "9")) (str.to_re "/") ((_ re.loop 2 2) (re.range "0" "9"))))))
; HWAE[^\n\r]*Email[^\n\r]*User-Agent\x3AUser-Agent\x3awowokayHost\x3A
(assert (not (str.in_re X (re.++ (str.to_re "HWAE") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Email") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:User-Agent:wowokayHost:\u{a}")))))
; /filename=[^\n]*\x2ereg/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".reg/i\u{a}")))))
; Subject\x3A\swww\x2Esearchwords\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "Subject:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.searchwords.com\u{a}")))))
(check-sat)

(exit)
