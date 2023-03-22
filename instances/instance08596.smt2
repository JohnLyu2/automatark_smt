(declare-const X String)
; /filename=[^\n]*\x2eair/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".air/i\u{a}"))))
; BysooTBwhenu\x2EcomToolbarWeAgentUser-Agent\x3ahasHost\x3atoWebupdate\.cgithis
(assert (str.in_re X (str.to_re "BysooTBwhenu.com\u{1b}ToolbarWeAgentUser-Agent:hasHost:toWebupdate.cgithis\u{a}")))
; /^\x2f[a-z0-9]{51}$/Ui
(assert (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 51 51) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "/Ui\u{a}"))))
(check-sat)
