(declare-const X String)
; /filename=[^\n]*\x2ejpeg/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".jpeg/i\u{a}"))))
; isiz=Xtrastepwebhancer\x2EcomStubbyOnever\x3aGhost
(assert (not (str.in_re X (str.to_re "isiz=Xtrastepwebhancer.comStubbyOnever:Ghost\u{13}\u{a}"))))
; www\x2Emyarmory\x2EcomHost\x3aHost\x3amessagessearch\x2eimesh\x2ecom
(assert (not (str.in_re X (str.to_re "www.myarmory.comHost:Host:messagessearch.imesh.com\u{a}"))))
; ^M{0,1}T{0,1}W{0,1}(TH){0,1}F{0,1}S{0,1}(SU){0,1}$
(assert (str.in_re X (re.++ (re.opt (str.to_re "M")) (re.opt (str.to_re "T")) (re.opt (str.to_re "W")) (re.opt (str.to_re "TH")) (re.opt (str.to_re "F")) (re.opt (str.to_re "S")) (re.opt (str.to_re "SU")) (str.to_re "\u{a}"))))
(check-sat)

(exit)
