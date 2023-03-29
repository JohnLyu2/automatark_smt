(declare-const X String)
; GmbH\x2FcommunicatortbHost\x3AUser-Agent\x3Aadblock\x2Elinkz\x2Ecom
(assert (str.in_re X (str.to_re "GmbH/communicatortbHost:User-Agent:adblock.linkz.com\u{a}")))
; gpstool\x2eglobaladserver\x2ecom\daction\x2ESearchdata2\.activshopper\.com
(assert (not (str.in_re X (re.++ (str.to_re "gpstool.globaladserver.com") (re.range "0" "9") (str.to_re "action.Searchdata2.activshopper.com\u{a}")))))
; /^"|'+(.*)+"$|'$/
(assert (str.in_re X (re.union (str.to_re "/\u{22}") (re.++ (re.+ (str.to_re "'")) (re.+ (re.* re.allchar)) (str.to_re "\u{22}")) (str.to_re "'/\u{a}"))))
; www\x2Eweepee\x2Ecom\d+metaresults\.copernic\.com\s+
(assert (str.in_re X (re.++ (str.to_re "www.weepee.com\u{1b}") (re.+ (re.range "0" "9")) (str.to_re "metaresults.copernic.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}"))))
(check-sat)

(exit)
