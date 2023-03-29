(declare-const X String)
; (?i)((sun(day)?|mon(day)?|tue(sday)?|wed(nesday)?|thu(rsday)?|fri(day)?|sat(urday)?),?\s)?((jan(uary)?|feb(ruary)?|mar(ch)?|apr(il)?|may|jun(e)?|jul(y)?|aug(ust)?|sep(tember)?|oct(ober)?|nov(ember)?|dec(ember)?)\s)+((0?[1-9]|[1-2][0-9]|3[0-1]),?\s)+([1-2][0-9][0-9][0-9])
(assert (str.in_re X (re.++ (re.opt (re.++ (re.union (re.++ (str.to_re "sun") (re.opt (str.to_re "day"))) (re.++ (str.to_re "mon") (re.opt (str.to_re "day"))) (re.++ (str.to_re "tue") (re.opt (str.to_re "sday"))) (re.++ (str.to_re "wed") (re.opt (str.to_re "nesday"))) (re.++ (str.to_re "thu") (re.opt (str.to_re "rsday"))) (re.++ (str.to_re "fri") (re.opt (str.to_re "day"))) (re.++ (str.to_re "sat") (re.opt (str.to_re "urday")))) (re.opt (str.to_re ",")) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))) (re.+ (re.++ (re.union (re.++ (str.to_re "jan") (re.opt (str.to_re "uary"))) (re.++ (str.to_re "feb") (re.opt (str.to_re "ruary"))) (re.++ (str.to_re "mar") (re.opt (str.to_re "ch"))) (re.++ (str.to_re "apr") (re.opt (str.to_re "il"))) (str.to_re "may") (re.++ (str.to_re "jun") (re.opt (str.to_re "e"))) (re.++ (str.to_re "jul") (re.opt (str.to_re "y"))) (re.++ (str.to_re "aug") (re.opt (str.to_re "ust"))) (re.++ (str.to_re "sep") (re.opt (str.to_re "tember"))) (re.++ (str.to_re "oct") (re.opt (str.to_re "ober"))) (re.++ (str.to_re "nov") (re.opt (str.to_re "ember"))) (re.++ (str.to_re "dec") (re.opt (str.to_re "ember")))) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))) (re.+ (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (re.range "1" "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.range "0" "1"))) (re.opt (str.to_re ",")) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))) (str.to_re "\u{a}") (re.range "1" "2") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9"))))
; FreeAccessBar\s+hostie[^\n\r]*CodeguruBrowser\dStableWeb-MailUser-Agent\x3A195\.225\.Subject\x3A
(assert (str.in_re X (re.++ (str.to_re "FreeAccessBar") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "hostie") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "CodeguruBrowser") (re.range "0" "9") (str.to_re "StableWeb-MailUser-Agent:195.225.Subject:\u{a}"))))
(check-sat)

(exit)
