(declare-const X String)
; HXLogOnly\w+areSubject\x3a\swww\.fast-finder\.comawbeta\.net-nucleus\.com
(assert (not (str.in_re X (re.++ (str.to_re "HXLogOnly") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "areSubject:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.fast-finder.comawbeta.net-nucleus.com\u{a}")))))
; TPSystemHost\x3a\x7D\x7BUser\x3AAlert\x2Fcgi-bin\x2FX-Mailer\x3A
(assert (not (str.in_re X (str.to_re "TPSystemHost:}{User:Alert/cgi-bin/X-Mailer:\u{13}\u{a}"))))
; /(^|&)destination_ip=[^&]*?(\x60|\x24\x28|%60|%24%28)/Pmi
(assert (str.in_re X (re.++ (str.to_re "/&destination_ip=") (re.* (re.comp (str.to_re "&"))) (re.union (str.to_re "`") (str.to_re "$(") (str.to_re "%60") (str.to_re "%24%28")) (str.to_re "/Pmi\u{a}"))))
(check-sat)

(exit)
