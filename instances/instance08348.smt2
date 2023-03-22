(declare-const X String)
; User-Agent\x3AMailerGuarded
(assert (not (str.in_re X (str.to_re "User-Agent:MailerGuarded\u{a}"))))
; \x2Fdss\x2Fcc\.2_0_0\.GoogleHXDownloadasdbiz\x2Ebiz
(assert (not (str.in_re X (str.to_re "/dss/cc.2_0_0.GoogleHXDownloadasdbiz.biz\u{a}"))))
(check-sat)
