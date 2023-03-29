(declare-const X String)
; Host\x3ADIMBUSsidebar\.activeshopper\.comUser-Agent\x3APcast
(assert (str.in_re X (str.to_re "Host:DIMBUSsidebar.activeshopper.comUser-Agent:Pcast\u{a}")))
(check-sat)

(exit)
