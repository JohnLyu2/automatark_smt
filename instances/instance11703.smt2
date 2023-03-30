(declare-const X String)
; seqepagqfphv\x2fsfdX-Mailer\x3A
(assert (str.in_re X (str.to_re "seqepagqfphv/sfdX-Mailer:\u{13}\u{a}")))
; wv=update\.cgidrivesDaysform-data\x3B\x20name=\x22pid\x22
(assert (not (str.in_re X (str.to_re "wv=update.cgidrivesDaysform-data; name=\u{22}pid\u{22}\u{a}"))))
(check-sat)

(exit)
