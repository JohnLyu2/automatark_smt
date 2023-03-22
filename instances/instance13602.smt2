(declare-const X String)
; HWAE.*wowokay\s%3fsearchresltX-Mailer\x3AisSubject\x3a
(assert (str.in_re X (re.++ (str.to_re "HWAE") (re.* re.allchar) (str.to_re "wowokay") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "%3fsearchresltX-Mailer:\u{13}isSubject:\u{a}"))))
; ToolbarUser-Agent\x3AFrom\x3A
(assert (str.in_re X (str.to_re "ToolbarUser-Agent:From:\u{a}")))
; /filename=[^\n]*\x2edcr/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".dcr/i\u{a}")))))
(check-sat)
