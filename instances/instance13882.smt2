(declare-const X String)
; www\.thecommunicator\.net[^\n\r]*iufilfwulmfi\x2friuf\.lio
(assert (str.in_re X (re.++ (str.to_re "www.thecommunicator.net") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "iufilfwulmfi/riuf.lio\u{a}"))))
; Subject\x3areportGatorNavExcel
(assert (str.in_re X (str.to_re "Subject:reportGatorNavExcel\u{a}")))
; Online\x2521\x2521\x2521\sUser-Agent\x3A\d+HXDownloadasdbiz\x2Ebiz
(assert (str.in_re X (re.++ (str.to_re "Online%21%21%21") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "HXDownloadasdbiz.biz\u{a}"))))
(check-sat)

(exit)
