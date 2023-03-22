(declare-const X String)
; /nsrjb[^\x00]*?([\x3b\x7c\x26\x60]|\x24\x28)/
(assert (str.in_re X (re.++ (str.to_re "/nsrjb") (re.* (re.comp (str.to_re "\u{0}"))) (re.union (str.to_re "$(") (str.to_re ";") (str.to_re "|") (str.to_re "&") (str.to_re "`")) (str.to_re "/\u{a}"))))
; ^(([01][0-9]|[012][0-3]):([0-5][0-9]))*$
(assert (not (str.in_re X (re.++ (re.* (re.++ (re.union (re.++ (re.union (str.to_re "0") (str.to_re "1")) (re.range "0" "9")) (re.++ (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2")) (re.range "0" "3"))) (str.to_re ":") (re.range "0" "5") (re.range "0" "9"))) (str.to_re "\u{a}")))))
; 3AFrom\x3Adddrep\x2Edudu\x2Ecomform-data\x3B\x20name=\x22pid\x22
(assert (str.in_re X (str.to_re "3AFrom:dddrep.dudu.comform-data; name=\u{22}pid\u{22}\u{a}")))
; DownloadDmInf\x5EinfoSimpsonUser-Agent\x3AClient
(assert (str.in_re X (str.to_re "DownloadDmInf^infoSimpsonUser-Agent:Client\u{a}")))
(check-sat)
