(declare-const X String)
; InformationSubject\x3ASpynovabyBlacksnprtz\x7CdialnoSearch
(assert (not (str.in_re X (str.to_re "InformationSubject:SpynovabyBlacksnprtz|dialnoSearch\u{a}"))))
; User-Agent\x3Atwfofrfzlugq\x2feve\.qduuid=ppcdomain\x2Eco\x2EukGuardedReferer\x3AreadyLOGUser-Agent\x3A
(assert (str.in_re X (str.to_re "User-Agent:twfofrfzlugq/eve.qduuid=ppcdomain.co.ukGuardedReferer:readyLOGUser-Agent:\u{a}")))
; pgwtjgxwthx\x2fbyb\.xkyLOGurl=enews\x2Eearthlink\x2Enet
(assert (str.in_re X (str.to_re "pgwtjgxwthx/byb.xkyLOGurl=enews.earthlink.net\u{a}")))
(check-sat)

(exit)
