(declare-const X String)
; AnalSpy\-LockedacezSubject\x3A
(assert (not (str.in_re X (str.to_re "AnalSpy-LockedacezSubject:\u{a}"))))
; ^([A-Z]{2}[\s]|[A-Z]{2})[\w]{2}$
(assert (str.in_re X (re.++ (re.union (re.++ ((_ re.loop 2 2) (re.range "A" "Z")) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 2 2) (re.range "A" "Z"))) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{a}"))))
; ^[0-9]*$
(assert (not (str.in_re X (re.++ (re.* (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)

(exit)
