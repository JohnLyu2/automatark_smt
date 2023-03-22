(declare-const X String)
; XPPreUser-Agent\x3ARemoteYOURsqlStarLoggerclvompycem\x2fcen\.vcn
(assert (not (str.in_re X (str.to_re "XPPreUser-Agent:RemoteYOURsqlStarLoggerclvompycem/cen.vcn\u{a}"))))
(check-sat)
