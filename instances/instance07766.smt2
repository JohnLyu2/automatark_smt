(declare-const X String)
; URL\s+\.cfgmPOPrtCUSTOMPalToolbarUser-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "URL") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ".cfgmPOPrtCUSTOMPalToolbarUser-Agent:\u{a}"))))
; /^User\x2dAgent\x3a\s*[^\n]*Safari[^\n]*\r\n/smi
(assert (not (str.in_re X (re.++ (str.to_re "/User-Agent:") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re "Safari") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re "\u{d}\u{a}/smi\u{a}")))))
; User-Agent\x3a\soffers\x2Ebullseye-network\x2Ecom\d+FTPsearch\.dropspam\.com
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "offers.bullseye-network.com") (re.+ (re.range "0" "9")) (str.to_re "FTPsearch.dropspam.com\u{a}")))))
; /z\x3D[A-Z0-9%]{700}/i
(assert (not (str.in_re X (re.++ (str.to_re "/z=") ((_ re.loop 700 700) (re.union (re.range "A" "Z") (re.range "0" "9") (str.to_re "%"))) (str.to_re "/i\u{a}")))))
; /\x28\x3f\x3d[^)]{300}/
(assert (not (str.in_re X (re.++ (str.to_re "/(?=") ((_ re.loop 300 300) (re.comp (str.to_re ")"))) (str.to_re "/\u{a}")))))
(check-sat)

(exit)
