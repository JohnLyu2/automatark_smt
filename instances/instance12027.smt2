(declare-const X String)
; www\x2Ealfacleaner\x2EcomHost\x3aLogs
(assert (not (str.in_re X (str.to_re "www.alfacleaner.comHost:Logs\u{a}"))))
; ^(\d*\s*\-?\s*\d*)$
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") (re.* (re.range "0" "9")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (str.to_re "-")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* (re.range "0" "9"))))))
; /^\/\d\x2eexe/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//") (re.range "0" "9") (str.to_re ".exe/Ui\u{a}")))))
(check-sat)
