(declare-const X String)
; actualnames\.comclient\x2Ebaigoo\x2Ecomzzzvmkituktgr\x2fetiexpsp2-InformationHost\x3A
(assert (not (str.in_re X (str.to_re "actualnames.comclient.baigoo.comzzzvmkituktgr/etiexpsp2-InformationHost:\u{a}"))))
; Host\x3A.*www\x2e2-seek\x2ecom\x2fsearch
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.* re.allchar) (str.to_re "www.2-seek.com/search\u{a}"))))
; /filename\s*=\s*[^\r\n]*?\x2eswf[\x22\x27\x3b\s\r\n]/i
(assert (str.in_re X (re.++ (str.to_re "/filename") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "=") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re ".swf") (re.union (str.to_re "\u{22}") (str.to_re "'") (str.to_re ";") (str.to_re "\u{d}") (str.to_re "\u{a}") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "/i\u{a}"))))
; ^(0|[-]{1}([1-9]{1}[0-9]{0,3}|[1-2]{1}[0-9]{1,4}|[3]{1}([0-1]{1}[0-9]{3}|[2]{1}([0-6]{1}[0-9]{2}|[7]{1}([0-5]{1}[0-9]{1}|([6]{1}[0-8]{1})))))|(\+)?([1-9]{1}[0-9]{0,3}|[1-2]{1}[0-9]{1,4}|[3]{1}([0-1]{1}[0-9]{3}|[2]{1}([0-6]{1}[0-9]{2}|[7]{1}([0-5]{1}[0-9]{1}|([6]{1}[0-7]{1}))))))$
(assert (str.in_re X (re.++ (re.union (str.to_re "0") (re.++ ((_ re.loop 1 1) (str.to_re "-")) (re.union (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 3) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (re.range "1" "2")) ((_ re.loop 1 4) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to_re "3")) (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "1")) ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to_re "2")) (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "6")) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to_re "7")) (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "5")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to_re "6")) ((_ re.loop 1 1) (re.range "0" "8"))))))))))) (re.++ (re.opt (str.to_re "+")) (re.union (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 3) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (re.range "1" "2")) ((_ re.loop 1 4) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to_re "3")) (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "1")) ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to_re "2")) (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "6")) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to_re "7")) (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "5")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to_re "6")) ((_ re.loop 1 1) (re.range "0" "7")))))))))))) (str.to_re "\u{a}"))))
(check-sat)

(exit)
