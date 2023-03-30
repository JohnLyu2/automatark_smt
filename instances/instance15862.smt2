(declare-const X String)
; /^\d+O\d+\.jsp\?[a-z0-9\x3d\x2b\x2f]{20}/iR
(assert (str.in_re X (re.++ (str.to_re "/") (re.+ (re.range "0" "9")) (str.to_re "O") (re.+ (re.range "0" "9")) (str.to_re ".jsp?") ((_ re.loop 20 20) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "=") (str.to_re "+") (str.to_re "/"))) (str.to_re "/iR\u{a}"))))
; function.*WEBCAM-.*User-Agent\x3a
(assert (str.in_re X (re.++ (str.to_re "function") (re.* re.allchar) (str.to_re "WEBCAM-") (re.* re.allchar) (str.to_re "User-Agent:\u{a}"))))
; /[^\n -~\r]{4}/P
(assert (not (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 4 4) (re.union (str.to_re "\u{a}") (re.range " " "~") (str.to_re "\u{d}"))) (str.to_re "/P\u{a}")))))
; /filename=[^\n]*\x2edvr-ms/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".dvr-ms/i\u{a}")))))
; ^[H][R][\-][0-9]{5}$
(assert (not (str.in_re X (re.++ (str.to_re "HR-") ((_ re.loop 5 5) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)

(exit)
