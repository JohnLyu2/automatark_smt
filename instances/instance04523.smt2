(declare-const X String)
; (<meta [.\w\W]*?\>)|(<style [.\w\W]*?</style>)|(<link [.\w\W]*?\>)|(<script [.\w\W]*?</script>)
(assert (not (str.in_re X (re.union (re.++ (str.to_re "<meta ") (re.* (re.union (str.to_re ".") (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re ">")) (re.++ (str.to_re "<style ") (re.* (re.union (str.to_re ".") (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "</style>")) (re.++ (str.to_re "<link ") (re.* (re.union (str.to_re ".") (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re ">")) (re.++ (str.to_re "\u{a}<script ") (re.* (re.union (str.to_re ".") (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "</script>"))))))
(check-sat)

(exit)
