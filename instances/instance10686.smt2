(declare-const X String)
; ^[12345]$
(assert (not (str.in_re X (re.++ (re.union (str.to_re "1") (str.to_re "2") (str.to_re "3") (str.to_re "4") (str.to_re "5")) (str.to_re "\u{a}")))))
; /RegExp?\x23.{0,5}\x28\x3f[^\x29]{0,4}i.*?\x28\x3f\x2d[^\x29]{0,4}i.{0,50}\x7c\x7c/smi
(assert (not (str.in_re X (re.++ (str.to_re "/RegEx") (re.opt (str.to_re "p")) (str.to_re "#") ((_ re.loop 0 5) re.allchar) (str.to_re "(?") ((_ re.loop 0 4) (re.comp (str.to_re ")"))) (str.to_re "i") (re.* re.allchar) (str.to_re "(?-") ((_ re.loop 0 4) (re.comp (str.to_re ")"))) (str.to_re "i") ((_ re.loop 0 50) re.allchar) (str.to_re "||/smi\u{a}")))))
; href\s*=\s*\"((\/)([i])(\/)+([\w\-\.,@?^=%&:/~\+#]*[\w\-\@?^=%&/~\+#]+)*)\"
(assert (not (str.in_re X (re.++ (str.to_re "href") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "=") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{22}\u{22}\u{a}/i") (re.+ (str.to_re "/")) (re.* (re.++ (re.* (re.union (str.to_re "-") (str.to_re ".") (str.to_re ",") (str.to_re "@") (str.to_re "?") (str.to_re "^") (str.to_re "=") (str.to_re "%") (str.to_re "&") (str.to_re ":") (str.to_re "/") (str.to_re "~") (str.to_re "+") (str.to_re "#") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.+ (re.union (str.to_re "-") (str.to_re "@") (str.to_re "?") (str.to_re "^") (str.to_re "=") (str.to_re "%") (str.to_re "&") (str.to_re "/") (str.to_re "~") (str.to_re "+") (str.to_re "#") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))))))))
(check-sat)

(exit)
