(declare-const X String)
; Server\s+Basic\d+action\x2EpioletHost\x3AIP-www\x2Einternetadvertisingcompany\x2Ebiz
(assert (not (str.in_re X (re.++ (str.to_re "Server") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Basic") (re.+ (re.range "0" "9")) (str.to_re "action.pioletHost:IP-www.internetadvertisingcompany.biz\u{a}")))))
; (25[0-5]|2[0-4][0-9]|[1][0-9]?[0-9]?|[1-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[1][0-9]?[0-9]?|[1-9][0-9]?|[0])\.(25[0-5]|2[0-4][0-9]|[1][0-9]?[0-9]?|[1-9][0-9]?|[0])\.(25[0-5]|2[0-4][0-9]|[1][0-9]?[0-9]?|[1-9][0-9]?)
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to_re "1") (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9"))) (re.++ (re.range "1" "9") (re.opt (re.range "0" "9")))) (str.to_re ".") (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to_re "1") (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9"))) (re.++ (re.range "1" "9") (re.opt (re.range "0" "9"))) (str.to_re "0")) (str.to_re ".") (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to_re "1") (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9"))) (re.++ (re.range "1" "9") (re.opt (re.range "0" "9"))) (str.to_re "0")) (str.to_re ".") (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to_re "1") (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9"))) (re.++ (re.range "1" "9") (re.opt (re.range "0" "9")))) (str.to_re "\u{a}"))))
; toolbarplace\x2Ecom\sUser-Agent\x3a\d+\x2Fnewsurfer4\x2Fclient=BysooTBADdcww\x2Edmcast\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "toolbarplace.com") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "/newsurfer4/client=BysooTBADdcww.dmcast.com\u{a}"))))
; ((\d{2})|(\d))\/((\d{2})|(\d))\/((\d{4})|(\d{2}))
(assert (not (str.in_re X (re.++ (re.union ((_ re.loop 2 2) (re.range "0" "9")) (re.range "0" "9")) (str.to_re "/") (re.union ((_ re.loop 2 2) (re.range "0" "9")) (re.range "0" "9")) (str.to_re "/") (re.union ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9"))) (str.to_re "\u{a}")))))
(check-sat)
