(declare-const X String)
; \x5Chome\/lordofsearchToolbar\x22StarLogger\x22
(assert (str.in_re X (str.to_re "\u{5c}home/lordofsearchToolbar\u{22}StarLogger\u{22}\u{a}")))
; XPPreUser-Agent\x3ARemoteYOURsqlStarLoggerclvompycem\x2fcen\.vcn
(assert (str.in_re X (str.to_re "XPPreUser-Agent:RemoteYOURsqlStarLoggerclvompycem/cen.vcn\u{a}")))
(check-sat)

(exit)
