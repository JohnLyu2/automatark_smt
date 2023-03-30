(declare-const X String)
; /filename=[\x22\x27]?\d\.exe[\x22\x27]?/Hi
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.opt (re.union (str.to_re "\u{22}") (str.to_re "'"))) (re.range "0" "9") (str.to_re ".exe") (re.opt (re.union (str.to_re "\u{22}") (str.to_re "'"))) (str.to_re "/Hi\u{a}")))))
; ToolbarServerserver\x7D\x7BSysuptime\x3A
(assert (not (str.in_re X (str.to_re "ToolbarServerserver}{Sysuptime:\u{a}"))))
; /^([a-z0-9])(([\-.]|[_]+)?([a-z0-9]+))*(@)([a-z0-9])((([-]+)?([a-z0-9]+))?)*((.[a-z]{2,3})?(.[a-z]{2,6}))$/i
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.union (re.range "a" "z") (re.range "0" "9")) (re.* (re.++ (re.opt (re.union (re.+ (str.to_re "_")) (str.to_re "-") (str.to_re "."))) (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))))) (str.to_re "@") (re.union (re.range "a" "z") (re.range "0" "9")) (re.* (re.opt (re.++ (re.opt (re.+ (str.to_re "-"))) (re.+ (re.union (re.range "a" "z") (re.range "0" "9")))))) (str.to_re "/i\u{a}") (re.opt (re.++ re.allchar ((_ re.loop 2 3) (re.range "a" "z")))) re.allchar ((_ re.loop 2 6) (re.range "a" "z"))))))
; /\/stat_u\/$/U
(assert (str.in_re X (str.to_re "//stat_u//U\u{a}")))
; \r\nSTATUS\x3A\dHost\x3aReferer\x3AServerSubject\x3a
(assert (not (str.in_re X (re.++ (str.to_re "\u{d}\u{a}STATUS:") (re.range "0" "9") (str.to_re "Host:Referer:ServerSubject:\u{a}")))))
(check-sat)

(exit)
