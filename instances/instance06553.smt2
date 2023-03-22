(declare-const X String)
; /filename=[^\n]*\x2ewma/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wma/i\u{a}")))))
; AgentanswerHost\x3Atool\x2Eworld2\x2EcnTCwhenu\x2Ecom
(assert (not (str.in_re X (str.to_re "AgentanswerHost:tool.world2.cn\u{13}TCwhenu.com\u{13}\u{a}"))))
; ookflolfctm\x2fnmot\.fmu
(assert (not (str.in_re X (str.to_re "ookflolfctm/nmot.fmu\u{a}"))))
(check-sat)
