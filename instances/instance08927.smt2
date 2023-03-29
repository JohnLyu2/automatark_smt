(declare-const X String)
; www\x2Esogou\x2Ecom\s+HWAE\+The\+password\+is\x3A
(assert (not (str.in_re X (re.++ (str.to_re "www.sogou.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "HWAE+The+password+is:\u{a}")))))
; /filename=[^\n]*\x2epmd/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pmd/i\u{a}"))))
; /^("(\\["\\]|[^"])*"|[^\n])*$/gm
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.* (re.union (re.++ (str.to_re "\u{22}") (re.* (re.union (re.++ (str.to_re "\u{5c}") (re.union (str.to_re "\u{22}") (str.to_re "\u{5c}"))) (re.comp (str.to_re "\u{22}")))) (str.to_re "\u{22}")) (re.comp (str.to_re "\u{a}")))) (str.to_re "/gm\u{a}")))))
; Cookie\x3aAppName\x2FGRSI\|Server\|Host\x3Aorigin\x3Dsidefind
(assert (not (str.in_re X (str.to_re "Cookie:AppName/GRSI|Server|\u{13}Host:origin=sidefind\u{a}"))))
; IPAnaloffers\x2Ebullseye-network\x2Ecom
(assert (str.in_re X (str.to_re "IPAnaloffers.bullseye-network.com\u{a}")))
(check-sat)

(exit)
