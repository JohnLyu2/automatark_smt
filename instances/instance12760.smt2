(declare-const X String)
; User-Agent\x3AUser-Agent\x3a
(assert (str.in_re X (str.to_re "User-Agent:User-Agent:\u{a}")))
; Host\x3AlogUser-Agent\x3AonSubject\x3A
(assert (not (str.in_re X (str.to_re "Host:logUser-Agent:onSubject:\u{a}"))))
; <[^>\s]*\bauthor\b[^>]*>
(assert (not (str.in_re X (re.++ (str.to_re "<") (re.* (re.union (str.to_re ">") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "author") (re.* (re.comp (str.to_re ">"))) (str.to_re ">\u{a}")))))
; User-Agent\x3A\w+\x0d\x0asubject=GhostVoice
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{d}\u{a}subject=GhostVoice\u{a}"))))
; ^(([0-9]{3})[-]?)*[0-9]{6,7}$
(assert (str.in_re X (re.++ (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to_re "-")))) ((_ re.loop 6 7) (re.range "0" "9")) (str.to_re "\u{a}"))))
(check-sat)
