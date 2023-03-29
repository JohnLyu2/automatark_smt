(declare-const X String)
; downloadfile\x2eorg\w+com\x3EHost\x3A
(assert (not (str.in_re X (re.++ (str.to_re "downloadfile.org") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "com>Host:\u{a}")))))
; Guarded\s+ready\w+PARSERHost\x3aA-311ServerUser-Agent\x3Ascn\x2emystoretoolbar\x2ecom
(assert (not (str.in_re X (re.++ (str.to_re "Guarded") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ready") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "PARSERHost:A-311ServerUser-Agent:scn.mystoretoolbar.com\u{13}\u{a}")))))
; SpyBuddySubject\x3Astats\x2edrivecleaner\x2ecom
(assert (not (str.in_re X (str.to_re "SpyBuddySubject:stats.drivecleaner.com\u{13}\u{a}"))))
; ^(.*?)([^/\\]*?)(\.[^/\\.]*)?$
(assert (str.in_re X (re.++ (re.* re.allchar) (re.* (re.union (str.to_re "/") (str.to_re "\u{5c}"))) (re.opt (re.++ (str.to_re ".") (re.* (re.union (str.to_re "/") (str.to_re "\u{5c}") (str.to_re "."))))) (str.to_re "\u{a}"))))
(check-sat)

(exit)
