(declare-const X String)
; \x7D\x7BTrojan\x3A\w+Host\x3A\s\d\x2El
(assert (str.in_re X (re.++ (str.to_re "}{Trojan:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Host:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (re.range "0" "9") (str.to_re ".l\u{a}"))))
; Host\x3A\w+www.*ToolbartheServer\x3Awww\x2Esearchreslt\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "www") (re.* re.allchar) (str.to_re "ToolbartheServer:www.searchreslt.com\u{a}")))))
; X-Mailer\x3aSpyAgentRootHost\x3A
(assert (str.in_re X (str.to_re "X-Mailer:\u{13}SpyAgentRootHost:\u{a}")))
; /filename=[^\n]*\x2edocm/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".docm/i\u{a}"))))
; (\/\*[\s\S.]+?\*\/|[/]{2,}.*|\/((\\\/)|.??)*\/[gim]{0,3}|'((\\\')|.??)*'|"((\\\")|.??)*"|-?\d+\.\d+e?-?e?\d*|-?\.\d+e-?\d+|\w+|[\[\]\(\)\{\}:=;"'\-&!|+,.\/*])
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "/*") (re.+ (re.union (re.comp (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ".") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "*/")) (re.++ (re.* re.allchar) ((_ re.loop 2 2) (str.to_re "/")) (re.* (str.to_re "/"))) (re.++ (str.to_re "/") (re.* (re.union (str.to_re "\u{5c}/") (re.opt re.allchar))) (str.to_re "/") ((_ re.loop 0 3) (re.union (str.to_re "g") (str.to_re "i") (str.to_re "m")))) (re.++ (str.to_re "'") (re.* (re.union (str.to_re "\u{5c}'") (re.opt re.allchar))) (str.to_re "'")) (re.++ (str.to_re "\u{22}") (re.* (re.union (str.to_re "\u{5c}\u{22}") (re.opt re.allchar))) (str.to_re "\u{22}")) (re.++ (re.opt (str.to_re "-")) (re.+ (re.range "0" "9")) (str.to_re ".") (re.+ (re.range "0" "9")) (re.opt (str.to_re "e")) (re.opt (str.to_re "-")) (re.opt (str.to_re "e")) (re.* (re.range "0" "9"))) (re.++ (re.opt (str.to_re "-")) (str.to_re ".") (re.+ (re.range "0" "9")) (str.to_re "e") (re.opt (str.to_re "-")) (re.+ (re.range "0" "9"))) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "[") (str.to_re "]") (str.to_re "(") (str.to_re ")") (str.to_re "{") (str.to_re "}") (str.to_re ":") (str.to_re "=") (str.to_re ";") (str.to_re "\u{22}") (str.to_re "'") (str.to_re "-") (str.to_re "&") (str.to_re "!") (str.to_re "|") (str.to_re "+") (str.to_re ",") (str.to_re ".") (str.to_re "/") (str.to_re "*")) (str.to_re "\u{a}"))))
(check-sat)

(exit)
