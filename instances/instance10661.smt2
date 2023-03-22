(declare-const X String)
; /\x3fsv\x3d\d{1,3}\x26tq\x3d/smiU
(assert (str.in_re X (re.++ (str.to_re "/?sv=") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re "&tq=/smiU\u{a}"))))
; /\x2e(jpg|png|gif)\x3fs?v.*?&tq=g[A-Z0-9]{2}/U
(assert (not (str.in_re X (re.++ (str.to_re "/.") (re.union (str.to_re "jpg") (str.to_re "png") (str.to_re "gif")) (str.to_re "?") (re.opt (str.to_re "s")) (str.to_re "v") (re.* re.allchar) (str.to_re "&tq=g") ((_ re.loop 2 2) (re.union (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "/U\u{a}")))))
(check-sat)
