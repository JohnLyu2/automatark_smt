(declare-const X String)
; (UPDATE\s+)(\w+)\s+(SET)\s+([\w+\s*=\s*\w+,?\s*]+)\s+(WHERE.+)
(assert (str.in_re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "SET") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.+ (re.union (str.to_re "+") (str.to_re "*") (str.to_re "=") (str.to_re ",") (str.to_re "?") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}UPDATE") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "WHERE") (re.+ re.allchar))))
; IPUSER-Host\x3AUser-Agent\x3A\x2Fsearchfast\x2F
(assert (str.in_re X (str.to_re "IPUSER-Host:User-Agent:/searchfast/\u{a}")))
; ((EQD[^']*')(RFF[^']*'){0,9}(EQN[^']*')?(TMD[^']*'){0,9}(DTM[^']*'){0,9}(LOC[^']*'){0,9}(MEA[^']*'){0,9}(DIM[^']*'){0,9}(TMP[^']*'){0,9}(RNG[^']*'){0,9}(SEL[^']*'){0,9}(FTX[^']*'){0,9}(DGS[^']*'){0,9}(EQA[^']*'){0,9}(NAD[^']*')?)((TDT[^']*')(RFF[^']*'){0,9}(LOC[^']*'){0,9}(DTM[^']*'){0,9})?
(assert (str.in_re X (re.++ (re.opt (re.++ ((_ re.loop 0 9) (re.++ (str.to_re "RFF") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) ((_ re.loop 0 9) (re.++ (str.to_re "LOC") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) ((_ re.loop 0 9) (re.++ (str.to_re "DTM") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) (str.to_re "TDT") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) (str.to_re "\u{a}") ((_ re.loop 0 9) (re.++ (str.to_re "RFF") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) (re.opt (re.++ (str.to_re "EQN") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) ((_ re.loop 0 9) (re.++ (str.to_re "TMD") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) ((_ re.loop 0 9) (re.++ (str.to_re "DTM") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) ((_ re.loop 0 9) (re.++ (str.to_re "LOC") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) ((_ re.loop 0 9) (re.++ (str.to_re "MEA") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) ((_ re.loop 0 9) (re.++ (str.to_re "DIM") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) ((_ re.loop 0 9) (re.++ (str.to_re "TMP") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) ((_ re.loop 0 9) (re.++ (str.to_re "RNG") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) ((_ re.loop 0 9) (re.++ (str.to_re "SEL") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) ((_ re.loop 0 9) (re.++ (str.to_re "FTX") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) ((_ re.loop 0 9) (re.++ (str.to_re "DGS") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) ((_ re.loop 0 9) (re.++ (str.to_re "EQA") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) (re.opt (re.++ (str.to_re "NAD") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) (str.to_re "EQD") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))))
(check-sat)

(exit)
