(declare-const X String)
; User-Agent\x3AMailerGuarded
(assert (str.in_re X (str.to_re "User-Agent:MailerGuarded\u{a}")))
; toolbarplace\x2Ecom\sUser-Agent\x3a\d+\x2Fnewsurfer4\x2Fclient=BysooTBADdcww\x2Edmcast\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "toolbarplace.com") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "/newsurfer4/client=BysooTBADdcww.dmcast.com\u{a}")))))
; UBAgentwhenu\x2Ecomwp-includes\x2Ffeed\x2Ephp\x3F
(assert (not (str.in_re X (str.to_re "UBAgentwhenu.com\u{13}wp-includes/feed.php?\u{a}"))))
; /filename=[^\n]*\x2erjs/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".rjs/i\u{a}")))))
(check-sat)
