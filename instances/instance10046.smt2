(declare-const X String)
; /filename=[^\n]*\x2eeps/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".eps/i\u{a}"))))
; Port\x2Ebody=ocllceclbhs\x2fgthWeComputerLoggerHost\x3Agdvsotuqwsg\x2fdxt\.hd^User-Agent\x3A
(assert (str.in_re X (str.to_re "Port.body=ocllceclbhs/gthWeComputerLoggerHost:gdvsotuqwsg/dxt.hdUser-Agent:\u{a}")))
; Readydoarauzeraqf\x2fvvv\.ulPALTALKHello\x2EMyAgentUser-Agent\x3AIP-FILEUser-Agent\x3AUser-Agent\x3A
(assert (not (str.in_re X (str.to_re "Readydoarauzeraqf/vvv.ulPALTALKHello.MyAgentUser-Agent:IP-FILEUser-Agent:User-Agent:\u{a}"))))
; ^([a-zA-Z]\:|\\)\\([^\\]+\\)*[^\/:*?"<>|]+\.htm(l)?$
(assert (str.in_re X (re.++ (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to_re ":")) (str.to_re "\u{5c}")) (str.to_re "\u{5c}") (re.* (re.++ (re.+ (re.comp (str.to_re "\u{5c}"))) (str.to_re "\u{5c}"))) (re.+ (re.union (str.to_re "/") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|"))) (str.to_re ".htm") (re.opt (str.to_re "l")) (str.to_re "\u{a}"))))
(check-sat)

(exit)
