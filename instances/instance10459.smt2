(declare-const X String)
; (0?[1-9]|[12][0-9]|3[01])-(0?[1-9]|1[012])-((19|20)\\d\\d)
(assert (str.in_re X (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1")))) (str.to_re "-") (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2")))) (str.to_re "-\u{a}") (re.union (str.to_re "19") (str.to_re "20")) (str.to_re "\u{5c}d\u{5c}d"))))
; /User-Agent\x3a\x20[^\x0d\x0a]*?\x3bU\x3a[^\x0d\x0a]{1,68}\x3brv\x3a/H
(assert (str.in_re X (re.++ (str.to_re "/User-Agent: ") (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re ";U:") ((_ re.loop 1 68) (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re ";rv:/H\u{a}"))))
; ppcdomain\x2Eco\x2Euk\s+ready\w+PARSERHost\x3aA-311ServerUser-Agent\x3Ascn\x2emystoretoolbar\x2ecom
(assert (not (str.in_re X (re.++ (str.to_re "ppcdomain.co.uk") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ready") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "PARSERHost:A-311ServerUser-Agent:scn.mystoretoolbar.com\u{13}\u{a}")))))
; /^(\x00\x00\x00\x00|.{4}(\x00\x00\x00\x00|.{12}))/s
(assert (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "\u{0}\u{0}\u{0}\u{0}") (re.++ ((_ re.loop 4 4) re.allchar) (re.union (str.to_re "\u{0}\u{0}\u{0}\u{0}") ((_ re.loop 12 12) re.allchar)))) (str.to_re "/s\u{a}"))))
(check-sat)

(exit)
