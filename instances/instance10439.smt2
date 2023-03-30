(declare-const X String)
; DownloadDmInf\x5EinfoSimpsonUser-Agent\x3AClient
(assert (str.in_re X (str.to_re "DownloadDmInf^infoSimpsonUser-Agent:Client\u{a}")))
; /\x26tv\x3d\d\.\d\.\d{4}\.\d{4}/smiU
(assert (str.in_re X (re.++ (str.to_re "/&tv=") (re.range "0" "9") (str.to_re ".") (re.range "0" "9") (str.to_re ".") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "/smiU\u{a}"))))
(check-sat)

(exit)
