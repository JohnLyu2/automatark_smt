(declare-const X String)
; \x22reaction\x2Etxt\x22User-Agent\x3AnewsSpyAgentsmrtshpr-cs-
(assert (not (str.in_re X (str.to_re "\u{22}reaction.txt\u{22}User-Agent:newsSpyAgentsmrtshpr-cs-\u{13}\u{a}"))))
; ^(([A-Z])([a-zA-Z0-9]+)?)(\:)(\d+)$
(assert (not (str.in_re X (re.++ (str.to_re ":") (re.+ (re.range "0" "9")) (str.to_re "\u{a}") (re.range "A" "Z") (re.opt (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))))))
(check-sat)

(exit)
