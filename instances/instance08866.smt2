(declare-const X String)
; trustyfiles\x2EcomBlade\x23\x23\x23\x23\.smx\?
(assert (not (str.in_re X (str.to_re "trustyfiles.comBlade####.smx?\u{a}"))))
; rprpgbnrppb\x2fci\d\x2ElStopperHost\x3AHost\x3aclvompycem\x2fcen\.vcn
(assert (not (str.in_re X (re.++ (str.to_re "rprpgbnrppb/ci") (re.range "0" "9") (str.to_re ".lStopperHost:Host:clvompycem/cen.vcn\u{a}")))))
; /filename=[^\n]*\x2ermf/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".rmf/i\u{a}"))))
(check-sat)

(exit)
