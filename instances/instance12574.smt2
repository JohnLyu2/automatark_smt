(declare-const X String)
; /m.php\?do=(getvers|status|getcmd)/Ui
(assert (str.in_re X (re.++ (str.to_re "/m") re.allchar (str.to_re "php?do=") (re.union (str.to_re "getvers") (str.to_re "status") (str.to_re "getcmd")) (str.to_re "/Ui\u{a}"))))
; www\x2Ealfacleaner\x2EcomHost\x3aLogs
(assert (not (str.in_re X (str.to_re "www.alfacleaner.comHost:Logs\u{a}"))))
(check-sat)
