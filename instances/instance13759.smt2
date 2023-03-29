(declare-const X String)
; ^(Sun|Mon|(T(ues|hurs))|Fri)(day|\.)?$|Wed(\.|nesday)?$|Sat(\.|urday)?$|T((ue?)|(hu?r?))\.?$
(assert (not (str.in_re X (re.union (re.++ (re.union (str.to_re "Sun") (str.to_re "Mon") (re.++ (str.to_re "T") (re.union (str.to_re "ues") (str.to_re "hurs"))) (str.to_re "Fri")) (re.opt (re.union (str.to_re "day") (str.to_re ".")))) (re.++ (str.to_re "Wed") (re.opt (re.union (str.to_re ".") (str.to_re "nesday")))) (re.++ (str.to_re "Sat") (re.opt (re.union (str.to_re ".") (str.to_re "urday")))) (re.++ (str.to_re "T") (re.union (re.++ (str.to_re "u") (re.opt (str.to_re "e"))) (re.++ (str.to_re "h") (re.opt (str.to_re "u")) (re.opt (str.to_re "r")))) (re.opt (str.to_re ".")) (str.to_re "\u{a}"))))))
; \x22reaction\x2Etxt\x22User-Agent\x3AnewsSpyAgentsmrtshpr-cs-
(assert (not (str.in_re X (str.to_re "\u{22}reaction.txt\u{22}User-Agent:newsSpyAgentsmrtshpr-cs-\u{13}\u{a}"))))
; /User-Agent\x3a\x20[^\n]*?WinHttp\x2eWinHttpRequest.*?\n/H
(assert (str.in_re X (re.++ (str.to_re "/User-Agent: ") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re "WinHttp.WinHttpRequest") (re.* re.allchar) (str.to_re "\u{a}/H\u{a}"))))
(check-sat)

(exit)
