(declare-const X String)
; Readydoarauzeraqf\x2fvvv\.ulPALTALKHello\x2EMyAgentUser-Agent\x3AIP-FILEUser-Agent\x3AUser-Agent\x3A
(assert (not (str.in_re X (str.to_re "Readydoarauzeraqf/vvv.ulPALTALKHello.MyAgentUser-Agent:IP-FILEUser-Agent:User-Agent:\u{a}"))))
; aohobygi\x2fzwiw\s+\+The\+password\+is\x3A
(assert (str.in_re X (re.++ (str.to_re "aohobygi/zwiw") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "+The+password+is:\u{a}"))))
; /filename=[^\n]*\x2esum/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".sum/i\u{a}")))))
; TPSystem\s+TencentTraveler\s+www\x2eurlblaze\x2enetCurrentHost\x3AWindows
(assert (not (str.in_re X (re.++ (str.to_re "TPSystem") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "TencentTraveler") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.urlblaze.netCurrentHost:Windows\u{a}")))))
; 0{3,}|1{3,}|2{3,}|3{3,}|4{3,}|5{3,}|6{3,}|7{3,}|8{3,}|9{3,}
(assert (not (str.in_re X (re.union (re.++ ((_ re.loop 3 3) (str.to_re "0")) (re.* (str.to_re "0"))) (re.++ ((_ re.loop 3 3) (str.to_re "1")) (re.* (str.to_re "1"))) (re.++ ((_ re.loop 3 3) (str.to_re "2")) (re.* (str.to_re "2"))) (re.++ ((_ re.loop 3 3) (str.to_re "3")) (re.* (str.to_re "3"))) (re.++ ((_ re.loop 3 3) (str.to_re "4")) (re.* (str.to_re "4"))) (re.++ ((_ re.loop 3 3) (str.to_re "5")) (re.* (str.to_re "5"))) (re.++ ((_ re.loop 3 3) (str.to_re "6")) (re.* (str.to_re "6"))) (re.++ ((_ re.loop 3 3) (str.to_re "7")) (re.* (str.to_re "7"))) (re.++ ((_ re.loop 3 3) (str.to_re "8")) (re.* (str.to_re "8"))) (re.++ (str.to_re "\u{a}") ((_ re.loop 3 3) (str.to_re "9")) (re.* (str.to_re "9")))))))
(check-sat)
