(declare-const X String)
; ^[1-9]\d$
(assert (str.in_re X (re.++ (re.range "1" "9") (re.range "0" "9") (str.to_re "\u{a}"))))
; Points\s+newszzzvmkituktgr\x2fetieWatcherUser-Agent\x3Awww\x2Emyarmory\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "Points") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "newszzzvmkituktgr/etieWatcherUser-Agent:www.myarmory.com\u{a}"))))
; /\?inf\=[0-9a-f]{8}\x2Ex\d{2}\x2E\d{8}\x2E/Ui
(assert (not (str.in_re X (re.++ (str.to_re "/?inf=") ((_ re.loop 8 8) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to_re ".x") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 8 8) (re.range "0" "9")) (str.to_re "./Ui\u{a}")))))
(check-sat)

(exit)
