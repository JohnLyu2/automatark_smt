(declare-const X String)
; /filename=[^\n]*\x2epmd/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pmd/i\u{a}"))))
; Yeah\!User-Agent\x3a
(assert (not (str.in_re X (str.to_re "Yeah!User-Agent:\u{a}"))))
; /\x2erv([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.rv") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; /^\x2fwp-content\x2fthemes\x2f[A-Za-z0-9]\.php\?[A-Za-z0-9\x2B\x2F\x3D]{300}/Ui
(assert (str.in_re X (re.++ (str.to_re "//wp-content/themes/") (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9")) (str.to_re ".php?") ((_ re.loop 300 300) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "+") (str.to_re "/") (str.to_re "="))) (str.to_re "/Ui\u{a}"))))
; (^(\d{2}.\d{3}.\d{3}/\d{4}-\d{2})|(\d{14})$)
(assert (not (str.in_re X (re.++ (re.union (re.++ ((_ re.loop 2 2) (re.range "0" "9")) re.allchar ((_ re.loop 3 3) (re.range "0" "9")) re.allchar ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "/") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 2 2) (re.range "0" "9"))) ((_ re.loop 14 14) (re.range "0" "9"))) (str.to_re "\u{a}")))))
(check-sat)
