(declare-const X String)
; HXLogOnlyDaemonactivityIterenetFrom\x3AClass
(assert (str.in_re X (str.to_re "HXLogOnlyDaemonactivityIterenetFrom:Class\u{a}")))
; [+-]?\d(\.\d+)?[Ee][+-]?\d+
(assert (str.in_re X (re.++ (re.opt (re.union (str.to_re "+") (str.to_re "-"))) (re.range "0" "9") (re.opt (re.++ (str.to_re ".") (re.+ (re.range "0" "9")))) (re.union (str.to_re "E") (str.to_re "e")) (re.opt (re.union (str.to_re "+") (str.to_re "-"))) (re.+ (re.range "0" "9")) (str.to_re "\u{a}"))))
; ^\(?\d{3}?\)?\-?\d{3}?\-?\d{4}?$
(assert (not (str.in_re X (re.++ (re.opt (str.to_re "(")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to_re ")")) (re.opt (str.to_re "-")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to_re "-")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}")))))
; /filename=[^\n]*\x2ecgm/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".cgm/i\u{a}")))))
; /(USER|NICK)\x20BOSS\x2d[A-Z0-9\x5b\x5d\x2d]{15}/
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "USER") (str.to_re "NICK")) (str.to_re " BOSS-") ((_ re.loop 15 15) (re.union (re.range "A" "Z") (re.range "0" "9") (str.to_re "[") (str.to_re "]") (str.to_re "-"))) (str.to_re "/\u{a}")))))
(check-sat)
