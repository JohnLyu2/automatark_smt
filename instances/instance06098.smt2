(declare-const X String)
; ([A-Z]:\\[^/:\*;\/\:\?<>\|]+)|(\\{2}[^/:\*;\/\:\?<>\|]+)
(assert (str.in_re X (re.union (re.++ (re.range "A" "Z") (str.to_re ":\u{5c}") (re.+ (re.union (str.to_re "/") (str.to_re ":") (str.to_re "*") (str.to_re ";") (str.to_re "?") (str.to_re "<") (str.to_re ">") (str.to_re "|")))) (re.++ (str.to_re "\u{a}") ((_ re.loop 2 2) (str.to_re "\u{5c}")) (re.+ (re.union (str.to_re "/") (str.to_re ":") (str.to_re "*") (str.to_re ";") (str.to_re "?") (str.to_re "<") (str.to_re ">") (str.to_re "|")))))))
; adserver\.warezclient\.com530Host\x3A
(assert (not (str.in_re X (str.to_re "adserver.warezclient.com530Host:\u{a}"))))
; (\<!--\s*.*?((--\>)|$))
(assert (str.in_re X (re.++ (str.to_re "\u{a}<!--") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* re.allchar) (str.to_re "-->"))))
; /^(\x75|\x2d|\x2f|\x73|\xa2|\x2e|\x24|\x74)/sR
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "u") (str.to_re "-") (str.to_re "/") (str.to_re "s") (str.to_re "\u{a2}") (str.to_re ".") (str.to_re "$") (str.to_re "t")) (str.to_re "/sR\u{a}")))))
; (\b(10|11|12|13|14|15|16|17|18|19)[0-9]\b)
(assert (str.in_re X (re.++ (str.to_re "\u{a}") (re.range "0" "9") (str.to_re "1") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2") (str.to_re "3") (str.to_re "4") (str.to_re "5") (str.to_re "6") (str.to_re "7") (str.to_re "8") (str.to_re "9")))))
(check-sat)
