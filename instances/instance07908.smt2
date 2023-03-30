(declare-const X String)
; www\.take5bingo\.com\d+Host\x3AHost\x3A
(assert (not (str.in_re X (re.++ (str.to_re "www.take5bingo.com\u{1b}") (re.+ (re.range "0" "9")) (str.to_re "Host:Host:\u{a}")))))
; /\x0aArray\x0a\x28\x0a\x20{4}\x5b[a-z\d]{11}\x5d\x20\x3d\x3e\x20\d{16}\x0a\x29/i
(assert (not (str.in_re X (re.++ (str.to_re "/\u{a}Array\u{a}(\u{a}") ((_ re.loop 4 4) (str.to_re " ")) (str.to_re "[") ((_ re.loop 11 11) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "] => ") ((_ re.loop 16 16) (re.range "0" "9")) (str.to_re "\u{a})/i\u{a}")))))
; ^(([0-2])?([0-9]))$
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") (re.opt (re.range "0" "2")) (re.range "0" "9")))))
; /filename=[^\n]*\x2ewal/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wal/i\u{a}")))))
(check-sat)

(exit)
