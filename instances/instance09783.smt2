(declare-const X String)
; ^([a-z0-9]+[.+-])*([a-z0-9]+)+@(([a-z0-9]+[.-])+([a-z]{2,})$|(([0-9]|[1-9][0-9]|1[0-9]{1,2}|2[0-4][0-9]|25[0-5])(\.|$)){4})
(assert (str.in_re X (re.++ (re.* (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (re.union (str.to_re ".") (str.to_re "+") (str.to_re "-")))) (re.+ (re.+ (re.union (re.range "a" "z") (re.range "0" "9")))) (str.to_re "@") (re.union (re.++ (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (re.union (str.to_re ".") (str.to_re "-")))) ((_ re.loop 2 2) (re.range "a" "z")) (re.* (re.range "a" "z"))) ((_ re.loop 4 4) (re.++ (re.union (re.range "0" "9") (re.++ (re.range "1" "9") (re.range "0" "9")) (re.++ (str.to_re "1") ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to_re "25") (re.range "0" "5"))) (str.to_re ".")))) (str.to_re "\u{a}"))))
; //.*|/\*[\s\S]*?\*/
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.union (re.++ (str.to_re "/") (re.* re.allchar)) (re.++ (str.to_re "*") (re.* (re.union (re.comp (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "*/\u{a}")))))))
; /\r\nReferer\x3A\x20http\x3A\x2F\x2f[a-z0-9\x2d\x2e]+\x2F\x3Fdo\x3Dpayment\x26ver\x3D\d+\x26sid\x3D\d+\x26sn\x3D\d+\r\n/H
(assert (str.in_re X (re.++ (str.to_re "/\u{d}\u{a}Referer: http://") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-") (str.to_re "."))) (str.to_re "/?do=payment&ver=") (re.+ (re.range "0" "9")) (str.to_re "&sid=") (re.+ (re.range "0" "9")) (str.to_re "&sn=") (re.+ (re.range "0" "9")) (str.to_re "\u{d}\u{a}/H\u{a}"))))
; uuid=\s+User-Agent\x3a\d+\x5Chome\/lordofsearch
(assert (not (str.in_re X (re.++ (str.to_re "uuid=") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "\u{5c}home/lordofsearch\u{a}")))))
; MyHost\x3AtoHost\x3AWinSessionwww\x2eurlblaze\x2enetResultHost\x3A
(assert (str.in_re X (str.to_re "MyHost:toHost:WinSessionwww.urlblaze.netResultHost:\u{a}")))
(check-sat)
