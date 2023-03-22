(declare-const X String)
; www.*tool\x2Eworld2\x2Ecn
(assert (str.in_re X (re.++ (str.to_re "www") (re.* re.allchar) (str.to_re "tool.world2.cn\u{13}\u{a}"))))
; DISK\s+\x2Fcgi\x2Flogurl\.cgiSubject\x3AinsertX-Mailer\x3A
(assert (str.in_re X (re.++ (str.to_re "DISK") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/cgi/logurl.cgiSubject:insertX-Mailer:\u{13}\u{a}"))))
; ^(http(s?):\/\/)?(www\.)?youtu(be)?\.([a-z])+\/(watch(.*?)(\?|\&)v=)?(.*?)(&(.)*)?$
(assert (not (str.in_re X (re.++ (re.opt (re.++ (str.to_re "http") (re.opt (str.to_re "s")) (str.to_re "://"))) (re.opt (str.to_re "www.")) (str.to_re "youtu") (re.opt (str.to_re "be")) (str.to_re ".") (re.+ (re.range "a" "z")) (str.to_re "/") (re.opt (re.++ (str.to_re "watch") (re.* re.allchar) (re.union (str.to_re "?") (str.to_re "&")) (str.to_re "v="))) (re.* re.allchar) (re.opt (re.++ (str.to_re "&") (re.* re.allchar))) (str.to_re "\u{a}")))))
(check-sat)
