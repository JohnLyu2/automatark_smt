(declare-const X String)
; /^("(\\["\\]|[^"])*"|[^\n])*(\n|$)/gm
(assert (str.in_re X (re.++ (str.to_re "/") (re.* (re.union (re.++ (str.to_re "\u{22}") (re.* (re.union (re.++ (str.to_re "\u{5c}") (re.union (str.to_re "\u{22}") (str.to_re "\u{5c}"))) (re.comp (str.to_re "\u{22}")))) (str.to_re "\u{22}")) (re.comp (str.to_re "\u{a}")))) (str.to_re "\u{a}/gm\u{a}"))))
; /filename=[^\n]*\x2esmi/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".smi/i\u{a}"))))
; Referer\x3Amywaynowpgwtjgxwthx\x2fbyb\.xkywww\x2Eu88\x2Ecnsource%3Dultrasearch136%26campaign%3Dsnap
(assert (not (str.in_re X (str.to_re "Referer:mywaynowpgwtjgxwthx/byb.xkywww.u88.cnsource%3Dultrasearch136%26campaign%3Dsnap\u{a}"))))
; /filename=[^\n]*\x2eurl/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".url/i\u{a}"))))
; (^[0-9]{0,10}$)
(assert (str.in_re X (re.++ ((_ re.loop 0 10) (re.range "0" "9")) (str.to_re "\u{a}"))))
(check-sat)
