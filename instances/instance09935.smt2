(declare-const X String)
; www\x2Ealtnet\x2EcomHost\x3ANSIS_DOWNLOADSubject\x3AUser-Agent\x3Awww\x2Esearchingall\x2Ecom
(assert (str.in_re X (str.to_re "www.altnet.com\u{1b}Host:NSIS_DOWNLOADSubject:User-Agent:www.searchingall.com\u{a}")))
; ^((http|HTTP|https|HTTPS|ftp|FTP?)\:\/\/)?((www|WWW)+\.)+(([0-9]{1,3}){3}[0-9]{1,3}\.|([\w!~*'()-]+\.)*([\w^-][\w-]{0,61})?[\w]\.[a-z]{2,6})(:[0-9]{1,4})?((\/*)|(\/+[\w!~*'().;?:@&=+$,%#-]+)+\/*)$
(assert (str.in_re X (re.++ (re.opt (re.++ (re.union (str.to_re "http") (str.to_re "HTTP") (str.to_re "https") (str.to_re "HTTPS") (str.to_re "ftp") (re.++ (str.to_re "FT") (re.opt (str.to_re "P")))) (str.to_re "://"))) (re.+ (re.++ (re.+ (re.union (str.to_re "www") (str.to_re "WWW"))) (str.to_re "."))) (re.union (re.++ ((_ re.loop 3 3) ((_ re.loop 1 3) (re.range "0" "9"))) ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ".")) (re.++ (re.* (re.++ (re.+ (re.union (str.to_re "!") (str.to_re "~") (str.to_re "*") (str.to_re "'") (str.to_re "(") (str.to_re ")") (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "."))) (re.opt (re.++ (re.union (str.to_re "^") (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")) ((_ re.loop 0 61) (re.union (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")) (str.to_re ".") ((_ re.loop 2 6) (re.range "a" "z")))) (re.opt (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.range "0" "9")))) (re.union (re.* (str.to_re "/")) (re.++ (re.+ (re.++ (re.+ (str.to_re "/")) (re.+ (re.union (str.to_re "!") (str.to_re "~") (str.to_re "*") (str.to_re "'") (str.to_re "(") (str.to_re ")") (str.to_re ".") (str.to_re ";") (str.to_re "?") (str.to_re ":") (str.to_re "@") (str.to_re "&") (str.to_re "=") (str.to_re "+") (str.to_re "$") (str.to_re ",") (str.to_re "%") (str.to_re "#") (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (re.* (str.to_re "/")))) (str.to_re "\u{a}"))))
; ^[+-]? *100(\.0{0,2})? *%?$|^[+-]? *\d{1,2}(\.\d{1,2})? *%?$
(assert (not (str.in_re X (re.union (re.++ (re.opt (re.union (str.to_re "+") (str.to_re "-"))) (re.* (str.to_re " ")) (str.to_re "100") (re.opt (re.++ (str.to_re ".") ((_ re.loop 0 2) (str.to_re "0")))) (re.* (str.to_re " ")) (re.opt (str.to_re "%"))) (re.++ (re.opt (re.union (str.to_re "+") (str.to_re "-"))) (re.* (str.to_re " ")) ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (re.* (str.to_re " ")) (re.opt (str.to_re "%")) (str.to_re "\u{a}"))))))
; /\x2epcx([\x3f\x2f]|$)/Uim
(assert (not (str.in_re X (re.++ (str.to_re "/.pcx") (re.union (str.to_re "?") (str.to_re "/")) (str.to_re "/Uim\u{a}")))))
(check-sat)
