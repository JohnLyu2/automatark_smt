(declare-const X String)
; <[^/bp][^><]*>|<p[a-z][^><]*>|<b[^r][^><]*>|<br[a-z][^><]*>|</[^bp]+>|</p[a-z]+>|</b[^r]+>|</br[a-z]+>
(assert (not (str.in_re X (re.++ (str.to_re "<") (re.union (re.++ (re.union (str.to_re "/") (str.to_re "b") (str.to_re "p")) (re.* (re.union (str.to_re ">") (str.to_re "<"))) (str.to_re ">")) (re.++ (str.to_re "p") (re.range "a" "z") (re.* (re.union (str.to_re ">") (str.to_re "<"))) (str.to_re ">")) (re.++ (str.to_re "b") (re.comp (str.to_re "r")) (re.* (re.union (str.to_re ">") (str.to_re "<"))) (str.to_re ">")) (re.++ (str.to_re "br") (re.range "a" "z") (re.* (re.union (str.to_re ">") (str.to_re "<"))) (str.to_re ">")) (re.++ (str.to_re "/") (re.+ (re.union (str.to_re "b") (str.to_re "p"))) (str.to_re ">")) (re.++ (str.to_re "/p") (re.+ (re.range "a" "z")) (str.to_re ">")) (re.++ (str.to_re "/b") (re.+ (re.comp (str.to_re "r"))) (str.to_re ">")) (re.++ (str.to_re "/br") (re.+ (re.range "a" "z")) (str.to_re ">\u{a}")))))))
(check-sat)

(exit)
