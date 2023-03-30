(declare-const X String)
; Online\x2521\x2521\x2521\sUser-Agent\x3A\d+HXDownloadasdbiz\x2Ebiz
(assert (str.in_re X (re.++ (str.to_re "Online%21%21%21") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "HXDownloadasdbiz.biz\u{a}"))))
; Onetrustyfiles\x2EcomOverSpyzopabora\x2Einfo
(assert (not (str.in_re X (str.to_re "Onetrustyfiles.comOverSpyzopabora.info\u{a}"))))
(check-sat)

(exit)
