(declare-const X String)
; www\x2Ealfacleaner\x2EcomHost\x3aLogs
(assert (not (str.in_re X (str.to_re "www.alfacleaner.comHost:Logs\u{a}"))))
(check-sat)
