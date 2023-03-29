(declare-const X String)
; /^Cookie\x3a\s?SECID=[^\x3b]+?$/mD
(assert (str.in_re X (re.++ (str.to_re "/Cookie:") (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "SECID=") (re.+ (re.comp (str.to_re ";"))) (str.to_re "/mD\u{a}"))))
; X-Mailer\x3awlpgskmv\x2flwzo\.qv#Subject\x3aActivity
(assert (str.in_re X (str.to_re "X-Mailer:\u{13}wlpgskmv/lwzo.qv#Subject:Activity\u{a}")))
; /filename=[^\n]*\x2eflac/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".flac/i\u{a}")))))
(check-sat)

(exit)
