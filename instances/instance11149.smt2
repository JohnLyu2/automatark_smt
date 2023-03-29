(declare-const X String)
; Contact\d+Host\x3A\d+MailHost\x3aMSNLOGOVNUsertooffers\x2Ebullseye-network\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "Contact") (re.+ (re.range "0" "9")) (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "MailHost:MSNLOGOVNUsertooffers.bullseye-network.com\u{a}"))))
; ^(((([\*]{1}){1})|((\*\/){0,1}(([0-9]{1}){1}|(([1-5]{1}){1}([0-9]{1}){1}){1}))) ((([\*]{1}){1})|((\*\/){0,1}(([0-9]{1}){1}|(([1]{1}){1}([0-9]{1}){1}){1}|([2]{1}){1}([0-3]{1}){1}))) ((([\*]{1}){1})|((\*\/){0,1}(([1-9]{1}){1}|(([1-2]{1}){1}([0-9]{1}){1}){1}|([3]{1}){1}([0-1]{1}){1}))) ((([\*]{1}){1})|((\*\/){0,1}(([1-9]{1}){1}|(([1-2]{1}){1}([0-9]{1}){1}){1}|([3]{1}){1}([0-1]{1}){1}))|(jan|feb|mar|apr|may|jun|jul|aug|sep|okt|nov|dec)) ((([\*]{1}){1})|((\*\/){0,1}(([0-7]{1}){1}))|(sun|mon|tue|wed|thu|fri|sat)))$
(assert (str.in_re X (re.++ (str.to_re "\u{a}") (re.union ((_ re.loop 1 1) ((_ re.loop 1 1) (str.to_re "*"))) (re.++ (re.opt (str.to_re "*/")) (re.union ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "0" "9"))) ((_ re.loop 1 1) (re.++ ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "1" "5"))) ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "0" "9")))))))) (str.to_re " ") (re.union ((_ re.loop 1 1) ((_ re.loop 1 1) (str.to_re "*"))) (re.++ (re.opt (str.to_re "*/")) (re.union ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "0" "9"))) ((_ re.loop 1 1) (re.++ ((_ re.loop 1 1) ((_ re.loop 1 1) (str.to_re "1"))) ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "0" "9"))))) (re.++ ((_ re.loop 1 1) ((_ re.loop 1 1) (str.to_re "2"))) ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "0" "3"))))))) (str.to_re " ") (re.union ((_ re.loop 1 1) ((_ re.loop 1 1) (str.to_re "*"))) (re.++ (re.opt (str.to_re "*/")) (re.union ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "1" "9"))) ((_ re.loop 1 1) (re.++ ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "1" "2"))) ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "0" "9"))))) (re.++ ((_ re.loop 1 1) ((_ re.loop 1 1) (str.to_re "3"))) ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "0" "1"))))))) (str.to_re " ") (re.union ((_ re.loop 1 1) ((_ re.loop 1 1) (str.to_re "*"))) (re.++ (re.opt (str.to_re "*/")) (re.union ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "1" "9"))) ((_ re.loop 1 1) (re.++ ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "1" "2"))) ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "0" "9"))))) (re.++ ((_ re.loop 1 1) ((_ re.loop 1 1) (str.to_re "3"))) ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "0" "1")))))) (str.to_re "jan") (str.to_re "feb") (str.to_re "mar") (str.to_re "apr") (str.to_re "may") (str.to_re "jun") (str.to_re "jul") (str.to_re "aug") (str.to_re "sep") (str.to_re "okt") (str.to_re "nov") (str.to_re "dec")) (str.to_re " ") (re.union ((_ re.loop 1 1) ((_ re.loop 1 1) (str.to_re "*"))) (re.++ (re.opt (str.to_re "*/")) ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "0" "7")))) (str.to_re "sun") (str.to_re "mon") (str.to_re "tue") (str.to_re "wed") (str.to_re "thu") (str.to_re "fri") (str.to_re "sat")))))
; SAccsearchresltOnline100013Agentsvr\x5E\x5EMerlin
(assert (str.in_re X (str.to_re "SAccsearchresltOnline100013Agentsvr^^Merlin\u{13}\u{a}")))
; /^("(\\["\\]|[^"])*"|[^\n])*$/gm
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.* (re.union (re.++ (str.to_re "\u{22}") (re.* (re.union (re.++ (str.to_re "\u{5c}") (re.union (str.to_re "\u{22}") (str.to_re "\u{5c}"))) (re.comp (str.to_re "\u{22}")))) (str.to_re "\u{22}")) (re.comp (str.to_re "\u{a}")))) (str.to_re "/gm\u{a}")))))
(check-sat)

(exit)
