(declare-const X String)
; ^(http|https|ftp|ftps)\://([a-zA-Z0-9\-]+)(\.[a-zA-Z0-9\-]+)*(\.[a-zA-Z]{2,3})(:[0-9]*)?(/[a-zA-Z0-9_\-]*)*(\.?[a-zA-Z0-9#]{1,10})?([\?][a-zA-Z0-9\-\._\,\'\+&%\$#\=~]*)?$
(assert (str.in_re X (re.++ (re.union (str.to_re "http") (str.to_re "https") (str.to_re "ftp") (str.to_re "ftps")) (str.to_re "://") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-"))) (re.* (re.++ (str.to_re ".") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-"))))) (re.opt (re.++ (str.to_re ":") (re.* (re.range "0" "9")))) (re.* (re.++ (str.to_re "/") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "_") (str.to_re "-"))))) (re.opt (re.++ (re.opt (str.to_re ".")) ((_ re.loop 1 10) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "#"))))) (re.opt (re.++ (str.to_re "?") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-") (str.to_re ".") (str.to_re "_") (str.to_re ",") (str.to_re "'") (str.to_re "+") (str.to_re "&") (str.to_re "%") (str.to_re "$") (str.to_re "#") (str.to_re "=") (str.to_re "~"))))) (str.to_re "\u{a}.") ((_ re.loop 2 3) (re.union (re.range "a" "z") (re.range "A" "Z"))))))
; .*[\$Ss]pecia[l1]\W[Oo0]ffer.*
(assert (not (str.in_re X (re.++ (re.* re.allchar) (re.union (str.to_re "$") (str.to_re "S") (str.to_re "s")) (str.to_re "pecia") (re.union (str.to_re "l") (str.to_re "1")) (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.union (str.to_re "O") (str.to_re "o") (str.to_re "0")) (str.to_re "ffer") (re.* re.allchar) (str.to_re "\u{a}")))))
; Porta\s+SSKC\s+\.cfgmPOPrtCUSTOMPalToolbarUser-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "Porta") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "SSKC") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ".cfgmPOPrtCUSTOMPalToolbarUser-Agent:\u{a}"))))
; \[(.+)\].+\[n?varchar\].+NULL,
(assert (str.in_re X (re.++ (str.to_re "[") (re.+ re.allchar) (str.to_re "]") (re.+ re.allchar) (str.to_re "[") (re.opt (str.to_re "n")) (str.to_re "varchar]") (re.+ re.allchar) (str.to_re "NULL,\u{a}"))))
; ad\x2Esearchsquire\x2Ecom\s+ocllceclbhs\x2fgth
(assert (not (str.in_re X (re.++ (str.to_re "ad.searchsquire.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ocllceclbhs/gth\u{a}")))))
(check-sat)

(exit)
