(declare-const X String)
; Server\s+Basic\d+action\x2EpioletHost\x3AIP-www\x2Einternetadvertisingcompany\x2Ebiz
(assert (not (str.in_re X (re.++ (str.to_re "Server") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Basic") (re.+ (re.range "0" "9")) (str.to_re "action.pioletHost:IP-www.internetadvertisingcompany.biz\u{a}")))))
; User-Agent\x3ASurveillancecomOnline
(assert (not (str.in_re X (str.to_re "User-Agent:Surveillance\u{13}comOnline\u{a}"))))
; /filename=[^\n]*\x2ewvx/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wvx/i\u{a}")))))
; User-Agent\x3A\s+\x7D\x7BPassword\x3AAnal
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "}{Password:\u{1b}Anal\u{a}")))))
; requested\s+Reports\s+HostHost\x3aHost\x3AHost\x3AMyWebSearchSearchAssistant
(assert (str.in_re X (re.++ (str.to_re "requested") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Reports") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "HostHost:Host:Host:MyWebSearchSearchAssistant\u{a}"))))
(check-sat)
