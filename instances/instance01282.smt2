(declare-const X String)
; /^User\x2dAgent\x3a\s*[^\n]*Safari[^\n]*\r\n/smi
(assert (str.in_re X (re.++ (str.to_re "/User-Agent:") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re "Safari") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re "\u{d}\u{a}/smi\u{a}"))))
(check-sat)

(exit)
