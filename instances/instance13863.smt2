(declare-const X String)
; ^([A-Z|a-z]{2}\s{1}\d{2}\s{1}[A-Z|a-z]{1,2}\s{1}\d{1,4})?([A-Z|a-z]{3}\s{1}\d{1,4})?$
(assert (not (str.in_re X (re.++ (re.opt (re.++ ((_ re.loop 2 2) (re.union (re.range "A" "Z") (str.to_re "|") (re.range "a" "z"))) ((_ re.loop 1 1) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 1 2) (re.union (re.range "A" "Z") (str.to_re "|") (re.range "a" "z"))) ((_ re.loop 1 1) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 1 4) (re.range "0" "9")))) (re.opt (re.++ ((_ re.loop 3 3) (re.union (re.range "A" "Z") (str.to_re "|") (re.range "a" "z"))) ((_ re.loop 1 1) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 1 4) (re.range "0" "9")))) (str.to_re "\u{a}")))))
; /filename=[^\n]*\x2etorrent/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".torrent/i\u{a}"))))
; /\/state1\.php\?[A-Za-z0-9\x2B\x2F\x3D]{300}/Ui
(assert (str.in_re X (re.++ (str.to_re "//state1.php?") ((_ re.loop 300 300) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "+") (str.to_re "/") (str.to_re "="))) (str.to_re "/Ui\u{a}"))))
(check-sat)

(exit)
