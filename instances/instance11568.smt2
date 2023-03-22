(declare-const X String)
; pjpoptwql\x2frlnjsportsHost\x3ASubject\x3aYAHOOdestroyed\x21
(assert (not (str.in_re X (str.to_re "pjpoptwql/rlnjsportsHost:Subject:YAHOOdestroyed!\u{a}"))))
; /^User-Agent\x3a\x20[A-Z]{9}\x0d\x0a/Hm
(assert (str.in_re X (re.++ (str.to_re "/User-Agent: ") ((_ re.loop 9 9) (re.range "A" "Z")) (str.to_re "\u{d}\u{a}/Hm\u{a}"))))
; (^\+?([1-8])?\d(\.\d+)?$)|(^-90$)|(^-(([1-8])?\d(\.\d+)?$))
(assert (not (str.in_re X (re.union (re.++ (re.opt (str.to_re "+")) (re.opt (re.range "1" "8")) (re.range "0" "9") (re.opt (re.++ (str.to_re ".") (re.+ (re.range "0" "9"))))) (str.to_re "-90") (re.++ (str.to_re "\u{a}-") (re.opt (re.range "1" "8")) (re.range "0" "9") (re.opt (re.++ (str.to_re ".") (re.+ (re.range "0" "9")))))))))
(check-sat)
