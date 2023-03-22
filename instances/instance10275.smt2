(declare-const X String)
; /mJKV[^\s\x0D\x0A]+1Q_fQ_fQ_fQ_fQ_fQ_fQ_fQ/U
(assert (str.in_re X (re.++ (str.to_re "/mJKV") (re.+ (re.union (str.to_re "\u{d}") (str.to_re "\u{a}") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "1Q_fQ_fQ_fQ_fQ_fQ_fQ_fQ/U\u{a}"))))
; Software\s+User-Agent\x3A.*FictionalUser-Agent\x3AUser-Agent\x3a
(assert (not (str.in_re X (re.++ (str.to_re "Software") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "FictionalUser-Agent:User-Agent:\u{a}")))))
; X-Mailer\x3A.*\x2Frss.*Desktopcargo=report\<\x2Ftitle\>
(assert (not (str.in_re X (re.++ (str.to_re "X-Mailer:\u{13}") (re.* re.allchar) (str.to_re "/rss") (re.* re.allchar) (str.to_re "Desktopcargo=report</title>\u{a}")))))
; Logger\w+searchreslt\dSubject\x3AHANDY\x2FrssScaner
(assert (not (str.in_re X (re.++ (str.to_re "Logger") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "searchreslt") (re.range "0" "9") (str.to_re "Subject:HANDY/rssScaner\u{a}")))))
; ^((\+989)|(989)|(00989)|(09|9))([1|2|3][0-9]\d{7}$)
(assert (str.in_re X (re.++ (re.union (str.to_re "+989") (str.to_re "989") (str.to_re "00989") (str.to_re "09") (str.to_re "9")) (str.to_re "\u{a}") (re.union (str.to_re "1") (str.to_re "|") (str.to_re "2") (str.to_re "3")) (re.range "0" "9") ((_ re.loop 7 7) (re.range "0" "9")))))
(check-sat)
