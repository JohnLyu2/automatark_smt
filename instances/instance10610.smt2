(declare-const X String)
; /filename=[^\n]*\x2egz/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".gz/i\u{a}"))))
; ^(\(?\+?[0-9]*\)?)?[0-9_\- \(\)]*$
(assert (not (str.in_re X (re.++ (re.opt (re.++ (re.opt (str.to_re "(")) (re.opt (str.to_re "+")) (re.* (re.range "0" "9")) (re.opt (str.to_re ")")))) (re.* (re.union (re.range "0" "9") (str.to_re "_") (str.to_re "-") (str.to_re " ") (str.to_re "(") (str.to_re ")"))) (str.to_re "\u{a}")))))
; for\sinternalcyber@yahoo\x2EcomHeadersRedirectionHost\x3A
(assert (not (str.in_re X (re.++ (str.to_re "for") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "internalcyber@yahoo.comHeadersRedirectionHost:\u{a}")))))
; ^((\d{5}-\d{4})|(\d{5})|([AaBbCcEeGgHhJjKkLlMmNnPpRrSsTtVvXxYy]\d[A-Za-z]\s?\d[A-Za-z]\d))$
(assert (str.in_re X (re.++ (re.union (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9"))) ((_ re.loop 5 5) (re.range "0" "9")) (re.++ (re.union (str.to_re "A") (str.to_re "a") (str.to_re "B") (str.to_re "b") (str.to_re "C") (str.to_re "c") (str.to_re "E") (str.to_re "e") (str.to_re "G") (str.to_re "g") (str.to_re "H") (str.to_re "h") (str.to_re "J") (str.to_re "j") (str.to_re "K") (str.to_re "k") (str.to_re "L") (str.to_re "l") (str.to_re "M") (str.to_re "m") (str.to_re "N") (str.to_re "n") (str.to_re "P") (str.to_re "p") (str.to_re "R") (str.to_re "r") (str.to_re "S") (str.to_re "s") (str.to_re "T") (str.to_re "t") (str.to_re "V") (str.to_re "v") (str.to_re "X") (str.to_re "x") (str.to_re "Y") (str.to_re "y")) (re.range "0" "9") (re.union (re.range "A" "Z") (re.range "a" "z")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.range "0" "9") (re.union (re.range "A" "Z") (re.range "a" "z")) (re.range "0" "9"))) (str.to_re "\u{a}"))))
; &lt;/?([a-zA-Z][-A-Za-z\d\.]{0,71})(\s+(\S+)(\s*=\s*([-\w\.]{1,1024}|&quot;[^&quot;]{0,1024}&quot;|'[^']{0,1024}'))?)*\s*&gt;
(assert (str.in_re X (re.++ (str.to_re "&lt;") (re.opt (str.to_re "/")) (re.* (re.++ (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.+ (re.comp (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))) (re.opt (re.++ (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "=") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union ((_ re.loop 1 1024) (re.union (str.to_re "-") (str.to_re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.++ (str.to_re "&quot;") ((_ re.loop 0 1024) (re.union (str.to_re "&") (str.to_re "q") (str.to_re "u") (str.to_re "o") (str.to_re "t") (str.to_re ";"))) (str.to_re "&quot;")) (re.++ (str.to_re "'") ((_ re.loop 0 1024) (re.comp (str.to_re "'"))) (str.to_re "'"))))))) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "&gt;\u{a}") (re.union (re.range "a" "z") (re.range "A" "Z")) ((_ re.loop 0 71) (re.union (str.to_re "-") (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "."))))))
(check-sat)

(exit)
